; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_remove_bio_from_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_remove_bio_from_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio* }
%struct.r5conf = type { %struct.bio*, %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.r5conf*)* @remove_bio_from_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @remove_bio_from_retry(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %5 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %6 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %5, i32 0, i32 1
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = icmp ne %struct.bio* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %12 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %11, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %12, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %13, %struct.bio** %2, align 8
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %16 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %15, i32 0, i32 0
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load %struct.bio*, %struct.bio** %22, align 8
  %24 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 0
  store %struct.bio* %23, %struct.bio** %25, align 8
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %27, align 8
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = call i32 @raid5_set_bi_stripes(%struct.bio* %28, i32 1)
  br label %30

30:                                               ; preds = %20, %14
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %31, %struct.bio** %2, align 8
  br label %32

32:                                               ; preds = %30, %10
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %33
}

declare dso_local i32 @raid5_set_bi_stripes(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
