; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_set_gate_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_set_gate_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio200_subdev_8254 = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio200_subdev_8254*, i32, i32)* @dio200_set_gate_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_set_gate_src(%struct.dio200_subdev_8254* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dio200_subdev_8254*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.dio200_subdev_8254* %0, %struct.dio200_subdev_8254** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %5, align 8
  %10 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ugt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %41

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp ugt i32 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %5, align 8
  %25 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  %30 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %5, align 8
  %31 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call zeroext i8 @GAT_SCE(i32 %32, i32 %33, i32 %34)
  store i8 %35, i8* %8, align 1
  %36 = load i8, i8* %8, align 1
  %37 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %5, align 8
  %38 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @outb(i8 zeroext %36, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %22, %21, %17, %13
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local zeroext i8 @GAT_SCE(i32, i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
