; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_get_flash_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_hw.c_netxen_get_flash_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32, i32, i32*)* @netxen_get_flash_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_get_flash_block(%struct.netxen_adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32*, i32** %9, align 8
  store i32* %16, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %40, %4
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %25, i32 %26, i32* %11)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %75

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %17

43:                                               ; preds = %17
  %44 = load i32*, i32** %9, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32*, i32** %13, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = icmp ugt i8* %48, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %43
  %53 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %53, i32 %54, i32* %11)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %75

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32*, i32** %13, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = ptrtoint i8* %66 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i32* %61, i32* %14, i32 %72)
  br label %74

74:                                               ; preds = %58, %43
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %57, %29
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @netxen_rom_fast_read(%struct.netxen_adapter*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
