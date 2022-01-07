; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_ipac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_ipac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipac_hw = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPAC_TYPE_HSCX = common dso_local global i32 0, align 4
@IPAC_ID = common dso_local global i32 0, align 4
@IPAC_TYPE_IPAC = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i32 0, align 4
@IPAC__ON = common dso_local global i32 0, align 4
@IPAC_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: IPAC CONF %02x/%02x\0A\00", align 1
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: IPAC Design ID %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipac_hw*)* @ipac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipac_init(%struct.ipac_hw* %0) #0 {
  %2 = alloca %struct.ipac_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ipac_hw* %0, %struct.ipac_hw** %2, align 8
  %4 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IPAC_TYPE_HSCX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = call i32 @hscx_init(%struct.TYPE_4__* %14)
  %16 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 1
  %20 = call i32 @hscx_init(%struct.TYPE_4__* %19)
  %21 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %22 = load i32, i32* @IPAC_ID, align 4
  %23 = call i32 @ReadIPAC(%struct.ipac_hw* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %1
  %25 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IPAC_TYPE_IPAC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %24
  %32 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = call i32 @hscx_init(%struct.TYPE_4__* %35)
  %37 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 1
  %41 = call i32 @hscx_init(%struct.TYPE_4__* %40)
  %42 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %43 = load i32, i32* @IPAC_MASK, align 4
  %44 = load i32, i32* @IPAC__ON, align 4
  %45 = call i32 @WriteIPAC(%struct.ipac_hw* %42, i32 %43, i32 %44)
  %46 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %47 = load i32, i32* @IPAC_CONF, align 4
  %48 = call i32 @ReadIPAC(%struct.ipac_hw* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %50 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %55)
  %57 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %58 = load i32, i32* @IPAC_CONF, align 4
  %59 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @WriteIPAC(%struct.ipac_hw* %57, i32 %58, i32 %61)
  %63 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %64 = load i32, i32* @IPAC_ID, align 4
  %65 = call i32 @ReadIPAC(%struct.ipac_hw* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DEBUG_HW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %31
  %77 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %78 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @pr_notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %31
  br label %83

83:                                               ; preds = %82, %24
  br label %84

84:                                               ; preds = %83, %10
  %85 = load %struct.ipac_hw*, %struct.ipac_hw** %2, align 8
  %86 = getelementptr inbounds %struct.ipac_hw, %struct.ipac_hw* %85, i32 0, i32 1
  %87 = call i32 @isac_init(i32* %86)
  ret i32 %87
}

declare dso_local i32 @hscx_init(%struct.TYPE_4__*) #1

declare dso_local i32 @ReadIPAC(%struct.ipac_hw*, i32) #1

declare dso_local i32 @WriteIPAC(%struct.ipac_hw*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @isac_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
