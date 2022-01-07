; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_put_all_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_put_all_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32 }
%struct.r1bio = type { %struct.bio** }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.r1bio*)* @put_all_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_all_bios(%struct.r1conf* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio**, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %10 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 2
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %7
  %15 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %16 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %15, i32 0, i32 0
  %17 = load %struct.bio**, %struct.bio*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bio*, %struct.bio** %17, i64 %19
  store %struct.bio** %20, %struct.bio*** %6, align 8
  %21 = load %struct.bio**, %struct.bio*** %6, align 8
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  %23 = call i32 @BIO_SPECIAL(%struct.bio* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load %struct.bio**, %struct.bio*** %6, align 8
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  %28 = call i32 @bio_put(%struct.bio* %27)
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.bio**, %struct.bio*** %6, align 8
  store %struct.bio* null, %struct.bio** %30, align 8
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %7

34:                                               ; preds = %7
  ret void
}

declare dso_local i32 @BIO_SPECIAL(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
