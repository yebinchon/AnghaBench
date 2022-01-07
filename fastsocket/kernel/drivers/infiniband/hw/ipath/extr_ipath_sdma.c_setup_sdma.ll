; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_setup_sdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_setup_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"SendDMA memory not allocated\0A\00", align 1
@IPATH_SDMA_ABORT_ABORTED = common dso_local global i32 0, align 4
@sdma_notify_task = common dso_local global i32 0, align 4
@sdma_abort_task = common dso_local global i32 0, align 4
@INFINIPATH_S_SDMAINTENABLE = common dso_local global i32 0, align 4
@IPATH_SDMA_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_sdma(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %13 = call i32 @alloc_sdma(%struct.ipath_devdata* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %210

17:                                               ; preds = %1
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 21
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %24 = call i32 @ipath_dev_err(%struct.ipath_devdata* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %210

25:                                               ; preds = %17
  %26 = load i32, i32* @IPATH_SDMA_ABORT_ABORTED, align 4
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %30 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %29, i32 0, i32 20
  store i64 0, i64* %30, align 8
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 19
  store i64 0, i64* %32, align 8
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %35, i32 0, i32 18
  store i64 0, i64* %36, align 8
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %37, i32 0, i32 17
  store i64 0, i64* %38, align 8
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 16
  store i64 0, i64* %40, align 8
  %41 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %42, i32 0, i32 11
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %41, i32 %46, i32 %49)
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, 262144
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 11
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %56, i32 %61, i32 %62)
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %65, i32 0, i32 11
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %64, i32 %69, i32 %72)
  %74 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %75 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %76 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %75, i32 0, i32 11
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %81 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %74, i32 %79, i32 %82)
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %86, %89
  store i32 %90, i32* %5, align 4
  %91 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %92 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %95 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = add i32 %93, %96
  store i32 %97, i32* %4, align 4
  %98 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = sub i32 %100, %101
  %103 = call i32 @ipath_chg_pioavailkernel(%struct.ipath_devdata* %98, i32 %99, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %127, %25
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = udiv i32 %109, 64
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %4, align 4
  %112 = and i32 %111, 63
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp uge i32 %113, 3
  %115 = zext i1 %114 to i32
  %116 = call i32 @BUG_ON(i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = shl i64 1, %118
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = or i64 %124, %119
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* %4, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %104

130:                                              ; preds = %104
  %131 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %132 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %133 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %132, i32 0, i32 11
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %131, i32 %136, i32 %138)
  %140 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 11
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %140, i32 %145, i32 %147)
  %149 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %150 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %150, i32 0, i32 11
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %149, i32 %154, i32 %156)
  %158 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %159 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %158, i32 0, i32 15
  %160 = call i32 @INIT_LIST_HEAD(i32* %159)
  %161 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %162 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %161, i32 0, i32 14
  %163 = call i32 @INIT_LIST_HEAD(i32* %162)
  %164 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %165 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %164, i32 0, i32 13
  %166 = load i32, i32* @sdma_notify_task, align 4
  %167 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %168 = ptrtoint %struct.ipath_devdata* %167 to i64
  %169 = call i32 @tasklet_init(i32* %165, i32 %166, i64 %168)
  %170 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %171 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %170, i32 0, i32 12
  %172 = load i32, i32* @sdma_abort_task, align 4
  %173 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %174 = ptrtoint %struct.ipath_devdata* %173 to i64
  %175 = call i32 @tasklet_init(i32* %171, i32 %172, i64 %174)
  %176 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %177 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %176, i32 0, i32 9
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @spin_lock_irqsave(i32* %177, i64 %178)
  %180 = load i32, i32* @INFINIPATH_S_SDMAINTENABLE, align 4
  %181 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %182 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %186 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %187 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %186, i32 0, i32 11
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %192 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %185, i32 %190, i32 %193)
  %195 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %196 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %197 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %196, i32 0, i32 11
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %195, i32 %200)
  %202 = load i32, i32* @IPATH_SDMA_RUNNING, align 4
  %203 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %204 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %203, i32 0, i32 10
  %205 = call i32 @__set_bit(i32 %202, i32* %204)
  %206 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %207 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %206, i32 0, i32 9
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* %207, i64 %208)
  br label %210

210:                                              ; preds = %130, %22, %16
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alloc_sdma(%struct.ipath_devdata*) #2

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #2

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #2

declare dso_local i32 @ipath_chg_pioavailkernel(%struct.ipath_devdata*, i32, i32, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @tasklet_init(i32*, i32, i64) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #2

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
