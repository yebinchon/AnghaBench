; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_mc_addr_list_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_mc_addr_list_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ixgb_mc_addr_list_update\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" Clearing RAR[1-15]\0A\00", align 1
@IXGB_RAR_ENTRIES = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c" Clearing MTA\0A\00", align 1
@IXGB_MC_TBL_SIZE = common dso_local global i32 0, align 4
@MTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c" Adding the multicast addresses:\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c" MC Addr #%d =%.2X %.2X %.2X %.2X %.2X %.2X\0A\00", align 1
@IXGB_ETH_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Added a multicast address to RAR[%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" Hash value = 0x%03X\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"MC Update Complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_mc_addr_list_update(%struct.ixgb_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgb_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %34, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @IXGB_RAR_ENTRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %24 = load i32, i32* @RA, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 1
  %27 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %23, i32 %24, i32 %26, i32 0)
  %28 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %29 = load i32, i32* @RA, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %30, 1
  %32 = add nsw i32 %31, 1
  %33 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %28, i32 %29, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %18

37:                                               ; preds = %18
  %38 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %48, %37
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IXGB_MC_TBL_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %45 = load i32, i32* @MTA, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %44, i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %39

51:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %155, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %158

56:                                               ; preds = %52
  %57 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = mul nsw i32 %69, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %68, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = mul nsw i32 %79, %82
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %78, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  %93 = mul nsw i32 %89, %92
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %88, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = mul nsw i32 %99, %102
  %104 = add nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %98, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %110, %111
  %113 = mul nsw i32 %109, %112
  %114 = add nsw i32 %113, 5
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @DEBUGOUT7(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %67, i32 %77, i32 %87, i32 %97, i32 %107, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @IXGB_RAR_ENTRIES, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %56
  %123 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %126, %127
  %129 = mul nsw i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @ixgb_rar_set(%struct.ixgb_hw* %123, i32* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %154

138:                                              ; preds = %56
  %139 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @IXGB_ETH_LENGTH_OF_ADDRESS, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  %145 = mul nsw i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %140, i64 %146
  %148 = call i32 @ixgb_hash_mc_addr(%struct.ixgb_hw* %139, i32* %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %149)
  %151 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @ixgb_mta_set(%struct.ixgb_hw* %151, i32 %152)
  br label %154

154:                                              ; preds = %138, %122
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %52

158:                                              ; preds = %52
  %159 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw*, i32, i32, i32) #1

declare dso_local i32 @DEBUGOUT7(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgb_rar_set(%struct.ixgb_hw*, i32*, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @ixgb_hash_mc_addr(%struct.ixgb_hw*, i32*) #1

declare dso_local i32 @ixgb_mta_set(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
