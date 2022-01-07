; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32*, i32*, i32*, i32, i32*, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@RX_LE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_free_buffers(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %4 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %5 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %4, i32 0, i32 7
  %6 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  store %struct.sky2_hw* %6, %struct.sky2_hw** %3, align 8
  %7 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %8 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %13 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RX_LE_BYTES, align 4
  %16 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %17 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pci_free_consistent(i32 %14, i32 %15, i32* %18, i32 %21)
  %23 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %24 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %27 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %32 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %35 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %41 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %44 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pci_free_consistent(i32 %33, i32 %39, i32* %42, i32 %45)
  %47 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %48 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %30, %25
  %50 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %51 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %55 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %59 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %61 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
