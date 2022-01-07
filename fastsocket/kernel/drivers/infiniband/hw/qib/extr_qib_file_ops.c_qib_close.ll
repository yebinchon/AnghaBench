; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.qib_filedata* }
%struct.qib_filedata = type { i32, i32, i64, %struct.qib_ctxtdata* }
%struct.qib_ctxtdata = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64*, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i64, i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*)*, i32 (i32, i32, i32)*, i64, i32, i32** }

@qib_mutex = common dso_local global i32 0, align 4
@qib_cpulist = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@TXCHK_CHG_TYPE_KERN = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @qib_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_filedata*, align 8
  %7 = alloca %struct.qib_ctxtdata*, align 8
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = call i32 @mutex_lock(i32* @qib_mutex)
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.qib_filedata*, %struct.qib_filedata** %14, align 8
  store %struct.qib_filedata* %15, %struct.qib_filedata** %6, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  store %struct.qib_filedata* null, %struct.qib_filedata** %17, align 8
  %18 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %19 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %18, i32 0, i32 3
  %20 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %19, align 8
  store %struct.qib_ctxtdata* %20, %struct.qib_ctxtdata** %7, align 8
  %21 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %22 = icmp ne %struct.qib_ctxtdata* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @mutex_unlock(i32* @qib_mutex)
  br label %203

25:                                               ; preds = %2
  %26 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %27 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %26, i32 0, i32 13
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %27, align 8
  store %struct.qib_devdata* %28, %struct.qib_devdata** %8, align 8
  %29 = call i32 (...) @qib_flush_wc()
  %30 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %31 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %36 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %39 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @qib_user_sdma_queue_drain(i32 %37, i64 %40)
  %42 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %43 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @qib_user_sdma_queue_destroy(i64 %44)
  br label %46

46:                                               ; preds = %34, %25
  %47 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %48 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %53 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @qib_cpulist, align 4
  %56 = call i32 @__clear_bit(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %59 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %58, i32 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %65 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %70 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %74 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %73, i32 0, i32 11
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %77 = getelementptr inbounds %struct.qib_filedata, %struct.qib_filedata* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  store i64 0, i64* %80, align 8
  %81 = call i32 @mutex_unlock(i32* @qib_mutex)
  br label %203

82:                                               ; preds = %57
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 5
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %88 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %10, align 4
  %90 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %91 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %90, i32 0, i32 6
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  %96 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %97 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %11, align 8
  %99 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %100 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %99, i32 0, i32 10
  store i64 0, i64* %100, align 8
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %102 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %101, i32 0, i32 5
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %106 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %82
  %110 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %111 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %109
  %115 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %116 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %121 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119, %114, %109, %82
  %125 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %126 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %128 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %127, i32 0, i32 8
  store i64 0, i64* %128, align 8
  %129 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %130 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %132 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %124, %119
  %134 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %135 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %140 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %133
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %198

146:                                              ; preds = %141
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %148 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %147, i32 0, i32 3
  %149 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %148, align 8
  %150 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %151 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %154 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %10, align 4
  %157 = call i32 %149(i32 %152, i32 %155, i32 %156)
  %158 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %159 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %160 = call i32 @qib_clean_part_key(%struct.qib_ctxtdata* %158, %struct.qib_devdata* %159)
  %161 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %162 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %163 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %166 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @qib_disarm_piobufs(%struct.qib_devdata* %161, i32 %164, i32 %167)
  %169 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %170 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %171 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %174 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @TXCHK_CHG_TYPE_KERN, align 4
  %177 = call i32 @qib_chg_pioavailkernel(%struct.qib_devdata* %169, i32 %172, i32 %175, i32 %176, i32* null)
  %178 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %179 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %178, i32 0, i32 2
  %180 = load i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*)*, i32 (%struct.qib_devdata*, %struct.qib_ctxtdata*)** %179, align 8
  %181 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %182 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %183 = call i32 %180(%struct.qib_devdata* %181, %struct.qib_ctxtdata* %182)
  %184 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %185 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %146
  %189 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %190 = call i32 @unlock_expected_tids(%struct.qib_ctxtdata* %189)
  br label %191

191:                                              ; preds = %188, %146
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %194 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %195 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %191, %141
  %199 = call i32 @mutex_unlock(i32* @qib_mutex)
  %200 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %201 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %202 = call i32 @qib_free_ctxtdata(%struct.qib_devdata* %200, %struct.qib_ctxtdata* %201)
  br label %203

203:                                              ; preds = %198, %63, %23
  %204 = load %struct.qib_filedata*, %struct.qib_filedata** %6, align 8
  %205 = call i32 @kfree(%struct.qib_filedata* %204)
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qib_flush_wc(...) #1

declare dso_local i32 @qib_user_sdma_queue_drain(i32, i64) #1

declare dso_local i32 @qib_user_sdma_queue_destroy(i64) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_clean_part_key(%struct.qib_ctxtdata*, %struct.qib_devdata*) #1

declare dso_local i32 @qib_disarm_piobufs(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_chg_pioavailkernel(%struct.qib_devdata*, i32, i32, i32, i32*) #1

declare dso_local i32 @unlock_expected_tids(%struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_free_ctxtdata(%struct.qib_devdata*, %struct.qib_ctxtdata*) #1

declare dso_local i32 @kfree(%struct.qib_filedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
