; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_init_rx_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_init_rx_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"ixgb_init_rx_addrs\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" Keeping Permanent MAC Addr =%.2X %.2X %.2X \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%.2X %.2X %.2X\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Overriding MAC Address in RAR[0]\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" New MAC Addr =%.2X %.2X %.2X \00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Clearing RAR[1-15]\0A\00", align 1
@IXGB_RAR_ENTRIES = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_hw*)* @ixgb_init_rx_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_init_rx_addrs(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @mac_addr_valid(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %1
  %11 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %12 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ixgb_get_ee_mac_addr(%struct.ixgb_hw* %11, i32* %14)
  %16 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %25, i32 %30)
  %32 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %41, i32 %46)
  br label %87

48:                                               ; preds = %1
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %56 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32 %59, i32 %64)
  %66 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DEBUGOUT3(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %75, i32 %80)
  %82 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %83 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %84 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @ixgb_rar_set(%struct.ixgb_hw* %82, i32* %85, i32 0)
  br label %87

87:                                               ; preds = %48, %10
  %88 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %105, %87
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @IXGB_RAR_ENTRIES, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %95 = load i32, i32* @RA, align 4
  %96 = load i32, i32* %3, align 4
  %97 = shl i32 %96, 1
  %98 = add nsw i32 %97, 1
  %99 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %94, i32 %95, i32 %98, i32 0)
  %100 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %101 = load i32, i32* @RA, align 4
  %102 = load i32, i32* %3, align 4
  %103 = shl i32 %102, 1
  %104 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %100, i32 %101, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %89

108:                                              ; preds = %89
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @mac_addr_valid(i32*) #1

declare dso_local i32 @ixgb_get_ee_mac_addr(%struct.ixgb_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT3(i8*, i32, i32, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @ixgb_rar_set(%struct.ixgb_hw*, i32*, i32) #1

declare dso_local i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
