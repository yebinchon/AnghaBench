; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-record.h_dm_bio_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bio-record.h_dm_bio_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_details = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bio = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bio_details*, %struct.bio*)* @dm_bio_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_bio_restore(%struct.dm_bio_details* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_bio_details*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_bio_details* %0, %struct.dm_bio_details** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %7 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %12 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %17 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %22 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %27 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %68, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %39 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %54 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %37
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %31

71:                                               ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
