; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_assign_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_assign_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.file = type { %struct.qib_filedata*, %struct.TYPE_5__* }
%struct.qib_filedata = type { i32, i32, i32, %struct.qib_ctxtdata* }
%struct.qib_ctxtdata = type { i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qib_user_info = type { i32, i32, i64 }

@QIB_PORT_ALG_ACROSS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QIB_USER_SWMAJOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@QIB_PORT_ALG_COUNT = common dso_local global i32 0, align 4
@qib_mutex = common dso_local global i32 0, align 4
@QIB_USER_MINOR_BASE = common dso_local global i32 0, align 4
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@qib_cpulist_count = common dso_local global i32 0, align 4
@qib_cpulist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s PID %u affinity set to cpu %d; already allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.qib_user_info*)* @qib_assign_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_assign_ctxt(%struct.file* %0, %struct.qib_user_info* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.qib_user_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qib_filedata*, align 8
  %11 = alloca %struct.qib_ctxtdata*, align 8
  %12 = alloca %struct.qib_devdata*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.qib_user_info* %1, %struct.qib_user_info** %4, align 8
  %15 = load i32, i32* @QIB_PORT_ALG_ACROSS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call i64 @ctxt_fp(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %193

22:                                               ; preds = %2
  %23 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %24 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @QIB_USER_SWMAJOR, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %193

33:                                               ; preds = %22
  %34 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %35 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 65535
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp uge i32 %38, 11
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %42 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QIB_PORT_ALG_COUNT, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %48 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %40, %33
  %51 = call i32 @mutex_lock(i32* @qib_mutex)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @qib_compatible_subctxts(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %58 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.file*, %struct.file** %3, align 8
  %63 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %64 = call i32 @find_shared_ctxt(%struct.file* %62, %struct.qib_user_info* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %67
  br label %96

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %56, %50
  %74 = load %struct.file*, %struct.file** %3, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @iminor(i32 %78)
  %80 = load i32, i32* @QIB_USER_MINOR_BASE, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.file*, %struct.file** %3, align 8
  %88 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %89 = call i32 @find_free_ctxt(i32 %86, %struct.file* %87, %struct.qib_user_info* %88)
  store i32 %89, i32* %5, align 4
  br label %95

90:                                               ; preds = %73
  %91 = load %struct.file*, %struct.file** %3, align 8
  %92 = load %struct.qib_user_info*, %struct.qib_user_info** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @get_a_ctxt(%struct.file* %91, %struct.qib_user_info* %92, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %191, label %99

99:                                               ; preds = %96
  %100 = load %struct.file*, %struct.file** %3, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 0
  %102 = load %struct.qib_filedata*, %struct.qib_filedata** %101, align 8
  store %struct.qib_filedata* %102, %struct.qib_filedata** %10, align 8
  %103 = load %struct.qib_filedata*, %struct.qib_filedata** %10, align 8
  %104 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %103, i32 0, i32 3
  %105 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %104, align 8
  store %struct.qib_ctxtdata* %105, %struct.qib_ctxtdata** %11, align 8
  %106 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  %107 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %106, i32 0, i32 1
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %107, align 8
  store %struct.qib_devdata* %108, %struct.qib_devdata** %12, align 8
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  %110 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %99
  %116 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  %117 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  %121 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  %124 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.qib_filedata*, %struct.qib_filedata** %10, align 8
  %127 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @qib_user_sdma_queue_create(i32* %119, i32 %122, i32 %125, i32 %128)
  %130 = load %struct.qib_filedata*, %struct.qib_filedata** %10, align 8
  %131 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.qib_filedata*, %struct.qib_filedata** %10, align 8
  %133 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %115
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %136, %115
  br label %140

140:                                              ; preds = %139, %99
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %142 = call i32 @tsk_cpus_allowed(%struct.TYPE_6__* %141)
  %143 = call i32 @cpumask_weight(i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %165, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @qib_cpulist_count, align 4
  %149 = icmp uge i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load i32, i32* @qib_cpulist, align 4
  %152 = load i32, i32* @qib_cpulist_count, align 4
  %153 = call i32 @find_first_zero_bit(i32 %151, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @qib_cpulist_count, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @qib_cpulist, align 4
  %160 = call i32 @__set_bit(i32 %158, i32 %159)
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.qib_filedata*, %struct.qib_filedata** %10, align 8
  %163 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %157, %150
  br label %190

165:                                              ; preds = %146, %140
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %189

168:                                              ; preds = %165
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %170 = call i32 @tsk_cpus_allowed(%struct.TYPE_6__* %169)
  %171 = call i32 @cpumask_first(i32 %170)
  %172 = load i32, i32* @qib_cpulist, align 4
  %173 = call i64 @test_bit(i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %168
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  %177 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %176, i32 0, i32 1
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %186 = call i32 @tsk_cpus_allowed(%struct.TYPE_6__* %185)
  %187 = call i32 @cpumask_first(i32 %186)
  %188 = call i32 @qib_devinfo(%struct.TYPE_7__* %178, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %175, %168, %165
  br label %190

190:                                              ; preds = %189, %164
  br label %191

191:                                              ; preds = %190, %96
  %192 = call i32 @mutex_unlock(i32* @qib_mutex)
  br label %193

193:                                              ; preds = %191, %30, %19
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i64 @ctxt_fp(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qib_compatible_subctxts(i32, i32) #1

declare dso_local i32 @find_shared_ctxt(%struct.file*, %struct.qib_user_info*) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @find_free_ctxt(i32, %struct.file*, %struct.qib_user_info*) #1

declare dso_local i32 @get_a_ctxt(%struct.file*, %struct.qib_user_info*, i32) #1

declare dso_local i32 @qib_user_sdma_queue_create(i32*, i32, i32, i32) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @tsk_cpus_allowed(%struct.TYPE_6__*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @qib_devinfo(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
