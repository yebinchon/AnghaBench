; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32, i8*, i8*, i32, i8*, i8*, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RX_LE_BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_port*)* @sky2_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_alloc_buffers(%struct.sky2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca %struct.sky2_hw*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  %5 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %6 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %5, i32 0, i32 8
  %7 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  store %struct.sky2_hw* %7, %struct.sky2_hw** %4, align 8
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %9 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %12 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %18 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %17, i32 0, i32 7
  %19 = call i8* @pci_alloc_consistent(i32 %10, i32 %16, i32* %18)
  %20 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %21 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %23 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %74

27:                                               ; preds = %1
  %28 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %29 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 4, i32 %31)
  %33 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %34 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %36 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %74

40:                                               ; preds = %27
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %42 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RX_LE_BYTES, align 4
  %45 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %46 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %45, i32 0, i32 4
  %47 = call i8* @pci_alloc_consistent(i32 %43, i32 %44, i32* %46)
  %48 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %49 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %51 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  br label %74

55:                                               ; preds = %40
  %56 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %57 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @RX_LE_BYTES, align 4
  %60 = call i32 @memset(i8* %58, i32 0, i32 %59)
  %61 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %62 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kcalloc(i32 %63, i32 4, i32 %64)
  %66 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %67 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %69 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %55
  br label %74

73:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %77

74:                                               ; preds = %72, %54, %39, %26
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
