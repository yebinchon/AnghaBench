; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_atapi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_atapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i8*, i32, i8*, i8*)* @pcd_atapi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_atapi(%struct.pcd_unit* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.pcd_unit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.pcd_unit* %0, %struct.pcd_unit** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @pcd_command(%struct.pcd_unit* %12, i8* %13, i32 %14, i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = call i32 @mdelay(i32 1)
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @pcd_completion(%struct.pcd_unit* %21, i8* %22, i8* %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %20, %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.pcd_unit*, %struct.pcd_unit** %6, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @pcd_req_sense(%struct.pcd_unit* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local i32 @pcd_command(%struct.pcd_unit*, i8*, i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pcd_completion(%struct.pcd_unit*, i8*, i8*) #1

declare dso_local i32 @pcd_req_sense(%struct.pcd_unit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
