; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.zfcp_adapter* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i32*, i64, i32, i64 }
%struct.zfcp_adapter = type { %struct.TYPE_8__*, i32, %struct.ccw_device* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ccw_device = type { i32 }
%struct.qdio_initialize = type { i32 }
%struct.qdio_ssqd_desc = type { i32 }

@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_SIOSL_ISSUED = common dso_local global i32 0, align 4
@CHSC_AC2_DATA_DIV_ENABLED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED = common dso_local global i32 0, align 4
@CHSC_AC2_MULTI_BUFFER_ENABLED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_MB_ACT = common dso_local global i32 0, align 4
@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i8* null, align 8
@FSF_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Setting up the QDIO connection to the FCP adapter failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_open(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.qdio_buffer_element*, align 8
  %5 = alloca %struct.qdio_initialize, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca %struct.qdio_ssqd_desc, align 4
  %9 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 4
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  store %struct.zfcp_adapter* %12, %struct.zfcp_adapter** %6, align 8
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 2
  %15 = load %struct.ccw_device*, %struct.ccw_device** %14, align 8
  store %struct.ccw_device* %15, %struct.ccw_device** %7, align 8
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 1
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %170

25:                                               ; preds = %1
  %26 = load i32, i32* @ZFCP_STATUS_ADAPTER_SIOSL_ISSUED, align 4
  %27 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %28 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %27, i32 0, i32 4
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %28, align 8
  %30 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %29, i32 0, i32 1
  %31 = call i32 @atomic_clear_mask(i32 %26, i32* %30)
  %32 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %33 = call i32 @zfcp_qdio_setup_init_data(%struct.qdio_initialize* %5, %struct.zfcp_qdio* %32)
  %34 = call i64 @qdio_establish(%struct.qdio_initialize* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %164

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @qdio_get_ssqd_desc(i32 %39, %struct.qdio_ssqd_desc* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %160

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.qdio_ssqd_desc, %struct.qdio_ssqd_desc* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CHSC_AC2_DATA_DIV_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* @ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED, align 4
  %51 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %51, i32 0, i32 4
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %52, align 8
  %54 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %53, i32 0, i32 1
  %55 = call i32 @atomic_set_mask(i32 %50, i32* %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = getelementptr inbounds %struct.qdio_ssqd_desc, %struct.qdio_ssqd_desc* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CHSC_AC2_MULTI_BUFFER_ENABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32, i32* @ZFCP_STATUS_ADAPTER_MB_ACT, align 4
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %64, i32 0, i32 1
  %66 = call i32 @atomic_set_mask(i32 %63, i32* %65)
  %67 = load i8*, i8** @QDIO_MAX_ELEMENTS_PER_BUFFER, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %70 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %81

71:                                               ; preds = %56
  %72 = load i32, i32* @ZFCP_STATUS_ADAPTER_MB_ACT, align 4
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 1
  %75 = call i32 @atomic_clear_mask(i32 %72, i32* %74)
  %76 = load i8*, i8** @QDIO_MAX_ELEMENTS_PER_BUFFER, align 8
  %77 = getelementptr i8, i8* %76, i64 -1
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %80 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %71, %62
  %82 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %83 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %84 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = sub nsw i32 %86, 2
  %88 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %89 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %91 = call i64 @qdio_activate(%struct.ccw_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %160

94:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %101 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %103, i64 %105
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %108, align 8
  %110 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %109, i64 0
  store %struct.qdio_buffer_element* %110, %struct.qdio_buffer_element** %4, align 8
  %111 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %112 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %114 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %115 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %117 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %119 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %99
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %95

123:                                              ; preds = %95
  %124 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %125 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %126 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %127 = call i64 @do_QDIO(%struct.ccw_device* %124, i32 %125, i32 0, i32 0, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %160

130:                                              ; preds = %123
  %131 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %132 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %135 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %138 = call i32 @atomic_set(i32* %136, i32 %137)
  %139 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %140 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = icmp ne %struct.TYPE_8__* %141, null
  br i1 %142, label %143, label %159

143:                                              ; preds = %130
  %144 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %145 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %148 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32 %146, i32* %150, align 4
  %151 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %152 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %153, 8
  %155 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %156 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %143, %130
  store i32 0, i32* %2, align 4
  br label %170

160:                                              ; preds = %129, %93, %42
  %161 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %162 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %163 = call i32 @qdio_shutdown(%struct.ccw_device* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %36
  %165 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %166 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %165, i32 0, i32 0
  %167 = call i32 @dev_err(i32* %166, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %159, %22
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @zfcp_qdio_setup_init_data(%struct.qdio_initialize*, %struct.zfcp_qdio*) #1

declare dso_local i64 @qdio_establish(%struct.qdio_initialize*) #1

declare dso_local i64 @qdio_get_ssqd_desc(i32, %struct.qdio_ssqd_desc*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i64 @qdio_activate(%struct.ccw_device*) #1

declare dso_local i64 @do_QDIO(%struct.ccw_device*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qdio_shutdown(%struct.ccw_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
