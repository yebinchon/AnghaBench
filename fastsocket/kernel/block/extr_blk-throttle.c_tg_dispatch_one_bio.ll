; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_dispatch_one_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_dispatch_one_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i64* }
%struct.throtl_grp = type { i32*, i32* }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@BIO_RW_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*, i32, %struct.bio_list*)* @tg_dispatch_one_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_dispatch_one_bio(%struct.throtl_data* %0, %struct.throtl_grp* %1, i32 %2, %struct.bio_list* %3) #0 {
  %5 = alloca %struct.throtl_data*, align 8
  %6 = alloca %struct.throtl_grp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio_list*, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %5, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bio_list* %3, %struct.bio_list** %8, align 8
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %11 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call %struct.bio* @bio_list_pop(i32* %15)
  store %struct.bio* %16, %struct.bio** %9, align 8
  %17 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %18 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %26 = call i32 @throtl_put_tg(%struct.throtl_grp* %25)
  %27 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %28 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %38 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %46 = load %struct.bio*, %struct.bio** %9, align 8
  %47 = call i32 @throtl_charge_bio(%struct.throtl_grp* %45, %struct.bio* %46)
  %48 = load %struct.bio_list*, %struct.bio_list** %8, align 8
  %49 = load %struct.bio*, %struct.bio** %9, align 8
  %50 = call i32 @bio_list_add(%struct.bio_list* %48, %struct.bio* %49)
  %51 = load i32, i32* @BIO_RW_THROTTLED, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.bio*, %struct.bio** %9, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %58 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @throtl_trim_slice(%struct.throtl_data* %57, %struct.throtl_grp* %58, i32 %59)
  ret void
}

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i32 @throtl_put_tg(%struct.throtl_grp*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @throtl_charge_bio(%struct.throtl_grp*, %struct.bio*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

declare dso_local i32 @throtl_trim_slice(%struct.throtl_data*, %struct.throtl_grp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
