; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.__mem }
%struct.__mem = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Unaligned memory addr:0x%x size:0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MS_ADDR_LO = common dso_local global i32 0, align 4
@QLCNIC_MS_ADDR_HI = common dso_local global i32 0, align 4
@QLCNIC_MS_CTRL = common dso_local global i32 0, align 4
@QLCNIC_TA_START_ENABLE = common dso_local global i32 0, align 4
@MAX_CTL_CHECK = common dso_local global i32 0, align 4
@TA_CTL_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read through agent\0A\00", align 1
@qlcnic_ms_read_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_read_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_read_memory(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_dump_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.__mem*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.__mem* %17, %struct.__mem** %14, align 8
  %18 = load %struct.__mem*, %struct.__mem** %14, align 8
  %19 = getelementptr inbounds %struct.__mem, %struct.__mem* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.__mem*, %struct.__mem** %14, align 8
  %22 = getelementptr inbounds %struct.__mem, %struct.__mem* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 15
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  %29 = srem i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %3
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %131

41:                                               ; preds = %27
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  br label %47

47:                                               ; preds = %114, %41
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %121

50:                                               ; preds = %47
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %52 = load i32, i32* @QLCNIC_MS_ADDR_LO, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %51, i32 %52, i32 %53)
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %56 = load i32, i32* @QLCNIC_MS_ADDR_HI, align 4
  %57 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %55, i32 %56, i32 0)
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %60 = load i32, i32* @QLCNIC_TA_START_ENABLE, align 4
  %61 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %58, i32 %59, i32 %60)
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %76, %50
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @MAX_CTL_CHECK, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %68 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %69 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @TA_CTL_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %79

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %62

79:                                               ; preds = %74, %62
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @MAX_CTL_CHECK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = call i64 (...) @printk_ratelimit()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %122

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %79
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %101 = load i32*, i32** @qlcnic_ms_read_data, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %100, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @cpu_to_le32(i32 %107)
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 16
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %117, 16
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 16
  store i32 %120, i32* %11, align 4
  br label %47

121:                                              ; preds = %47
  br label %122

122:                                              ; preds = %121, %86
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load %struct.__mem*, %struct.__mem** %14, align 8
  %129 = getelementptr inbounds %struct.__mem, %struct.__mem* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %122, %31
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
