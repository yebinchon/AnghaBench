; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_cq.c_ipath_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ipath_ibdev = type { i64, i32, i32, i32 }
%struct.ipath_cq = type { %struct.ipath_cq*, %struct.ib_cq, %struct.ipath_cq_wc*, i32, i32, i64, i32, i32, i32 }
%struct.ipath_cq_wc = type { i64, i64 }

@ib_ipath_max_cqes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_ipath_max_cqs = common dso_local global i64 0, align 8
@IB_CQ_NONE = common dso_local global i32 0, align 4
@send_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @ipath_create_cq(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_ucontext* %3, %struct.ib_udata* %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_ucontext*, align 8
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca %struct.ipath_ibdev*, align 8
  %12 = alloca %struct.ipath_cq*, align 8
  %13 = alloca %struct.ipath_cq_wc*, align 8
  %14 = alloca %struct.ib_cq*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_ucontext* %3, %struct.ib_ucontext** %9, align 8
  store %struct.ib_udata* %4, %struct.ib_udata** %10, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %17)
  store %struct.ipath_ibdev* %18, %struct.ipath_ibdev** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ib_ipath_max_cqes, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ib_cq* @ERR_PTR(i32 %27)
  store %struct.ib_cq* %28, %struct.ib_cq** %14, align 8
  br label %196

29:                                               ; preds = %21
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ipath_cq* @kmalloc(i32 56, i32 %30)
  store %struct.ipath_cq* %31, %struct.ipath_cq** %12, align 8
  %32 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %33 = icmp ne %struct.ipath_cq* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ib_cq* @ERR_PTR(i32 %36)
  store %struct.ib_cq* %37, %struct.ib_cq** %14, align 8
  br label %196

38:                                               ; preds = %29
  store i32 16, i32* %15, align 4
  %39 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %40 = icmp ne %struct.ib_udata* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %43 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 4
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %15, align 4
  br label %65

56:                                               ; preds = %41, %38
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 4, %59
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32, i32* %15, align 4
  %67 = call %struct.ipath_cq_wc* @vmalloc_user(i32 %66)
  store %struct.ipath_cq_wc* %67, %struct.ipath_cq_wc** %13, align 8
  %68 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %13, align 8
  %69 = icmp ne %struct.ipath_cq_wc* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.ib_cq* @ERR_PTR(i32 %72)
  store %struct.ib_cq* %73, %struct.ib_cq** %14, align 8
  br label %193

74:                                               ; preds = %65
  %75 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %76 = icmp ne %struct.ib_udata* %75, null
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %79 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp uge i64 %81, 4
  br i1 %82, label %83, label %112

83:                                               ; preds = %77
  %84 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.ib_ucontext*, %struct.ib_ucontext** %9, align 8
  %87 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %13, align 8
  %88 = call %struct.ipath_cq* @ipath_create_mmap_info(%struct.ipath_ibdev* %84, i32 %85, %struct.ib_ucontext* %86, %struct.ipath_cq_wc* %87)
  %89 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %90 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %89, i32 0, i32 0
  store %struct.ipath_cq* %88, %struct.ipath_cq** %90, align 8
  %91 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %92 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %91, i32 0, i32 0
  %93 = load %struct.ipath_cq*, %struct.ipath_cq** %92, align 8
  %94 = icmp ne %struct.ipath_cq* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  %98 = call %struct.ib_cq* @ERR_PTR(i32 %97)
  store %struct.ib_cq* %98, %struct.ib_cq** %14, align 8
  br label %190

99:                                               ; preds = %83
  %100 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %101 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %102 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %101, i32 0, i32 0
  %103 = load %struct.ipath_cq*, %struct.ipath_cq** %102, align 8
  %104 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %103, i32 0, i32 8
  %105 = call i32 @ib_copy_to_udata(%struct.ib_udata* %100, i32* %104, i32 4)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %16, align 4
  %110 = call %struct.ib_cq* @ERR_PTR(i32 %109)
  store %struct.ib_cq* %110, %struct.ib_cq** %14, align 8
  br label %185

111:                                              ; preds = %99
  br label %115

112:                                              ; preds = %77, %74
  %113 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %114 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %113, i32 0, i32 0
  store %struct.ipath_cq* null, %struct.ipath_cq** %114, align 8
  br label %115

115:                                              ; preds = %112, %111
  %116 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %117 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %116, i32 0, i32 3
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %120 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ib_ipath_max_cqs, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %126 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %125, i32 0, i32 3
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  %130 = call %struct.ib_cq* @ERR_PTR(i32 %129)
  store %struct.ib_cq* %130, %struct.ib_cq** %14, align 8
  br label %185

131:                                              ; preds = %115
  %132 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %133 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %137 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %136, i32 0, i32 3
  %138 = call i32 @spin_unlock(i32* %137)
  %139 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %140 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %139, i32 0, i32 0
  %141 = load %struct.ipath_cq*, %struct.ipath_cq** %140, align 8
  %142 = icmp ne %struct.ipath_cq* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %131
  %144 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %145 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %144, i32 0, i32 1
  %146 = call i32 @spin_lock_irq(i32* %145)
  %147 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %148 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %147, i32 0, i32 0
  %149 = load %struct.ipath_cq*, %struct.ipath_cq** %148, align 8
  %150 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %149, i32 0, i32 7
  %151 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %152 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %151, i32 0, i32 2
  %153 = call i32 @list_add(i32* %150, i32* %152)
  %154 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %155 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %154, i32 0, i32 1
  %156 = call i32 @spin_unlock_irq(i32* %155)
  br label %157

157:                                              ; preds = %143, %131
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %160 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load i32, i32* @IB_CQ_NONE, align 4
  %163 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %164 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %166 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %165, i32 0, i32 5
  store i64 0, i64* %166, align 8
  %167 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %168 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %167, i32 0, i32 4
  %169 = call i32 @spin_lock_init(i32* %168)
  %170 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %171 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %170, i32 0, i32 3
  %172 = load i32, i32* @send_complete, align 4
  %173 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %174 = ptrtoint %struct.ipath_cq* %173 to i64
  %175 = call i32 @tasklet_init(i32* %171, i32 %172, i64 %174)
  %176 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %13, align 8
  %177 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  %178 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %13, align 8
  %179 = getelementptr inbounds %struct.ipath_cq_wc, %struct.ipath_cq_wc* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %13, align 8
  %181 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %182 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %181, i32 0, i32 2
  store %struct.ipath_cq_wc* %180, %struct.ipath_cq_wc** %182, align 8
  %183 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %184 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %183, i32 0, i32 1
  store %struct.ib_cq* %184, %struct.ib_cq** %14, align 8
  br label %196

185:                                              ; preds = %124, %108
  %186 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %187 = getelementptr inbounds %struct.ipath_cq, %struct.ipath_cq* %186, i32 0, i32 0
  %188 = load %struct.ipath_cq*, %struct.ipath_cq** %187, align 8
  %189 = call i32 @kfree(%struct.ipath_cq* %188)
  br label %190

190:                                              ; preds = %185, %95
  %191 = load %struct.ipath_cq_wc*, %struct.ipath_cq_wc** %13, align 8
  %192 = call i32 @vfree(%struct.ipath_cq_wc* %191)
  br label %193

193:                                              ; preds = %190, %70
  %194 = load %struct.ipath_cq*, %struct.ipath_cq** %12, align 8
  %195 = call i32 @kfree(%struct.ipath_cq* %194)
  br label %196

196:                                              ; preds = %193, %157, %34, %25
  %197 = load %struct.ib_cq*, %struct.ib_cq** %14, align 8
  ret %struct.ib_cq* %197
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local %struct.ipath_cq* @kmalloc(i32, i32) #1

declare dso_local %struct.ipath_cq_wc* @vmalloc_user(i32) #1

declare dso_local %struct.ipath_cq* @ipath_create_mmap_info(%struct.ipath_ibdev*, i32, %struct.ib_ucontext*, %struct.ipath_cq_wc*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @kfree(%struct.ipath_cq*) #1

declare dso_local i32 @vfree(%struct.ipath_cq_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
