; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_corrupt_bio_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-flakey.c_corrupt_bio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32 }
%struct.flakey_c = type { i32, i8 }

@.str = private unnamed_addr constant [95 x i8] c"Corrupting data bio=%p by writing %u to byte %u (rw=%c bi_rw=%lu bi_sector=%llu cur_bytes=%u)\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.flakey_c*)* @corrupt_bio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corrupt_bio_data(%struct.bio* %0, %struct.flakey_c* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.flakey_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.flakey_c* %1, %struct.flakey_c** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = call i32 @bio_cur_bytes(%struct.bio* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = call i8* @bio_data(%struct.bio* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.flakey_c*, %struct.flakey_c** %4, align 8
  %16 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load %struct.flakey_c*, %struct.flakey_c** %4, align 8
  %21 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.flakey_c*, %struct.flakey_c** %4, align 8
  %25 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  store i8 %22, i8* %29, align 1
  %30 = load %struct.bio*, %struct.bio** %3, align 8
  %31 = load %struct.flakey_c*, %struct.flakey_c** %4, align 8
  %32 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 4
  %34 = load %struct.flakey_c*, %struct.flakey_c** %4, align 8
  %35 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bio*, %struct.bio** %3, align 8
  %38 = call i64 @bio_data_dir(%struct.bio* %37)
  %39 = load i64, i64* @WRITE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 119, i32 114
  %43 = trunc i32 %42 to i8
  %44 = load %struct.bio*, %struct.bio** %3, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @DMDEBUG(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), %struct.bio* %30, i8 signext %33, i32 %36, i8 signext %43, i32 %46, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %19, %13, %2
  ret void
}

declare dso_local i32 @bio_cur_bytes(%struct.bio*) #1

declare dso_local i8* @bio_data(%struct.bio*) #1

declare dso_local i32 @DMDEBUG(i8*, %struct.bio*, i8 signext, i32, i8 signext, i32, i64, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
