; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_unreg_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_unreg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_mem_reg = type { i32* }
%struct.ib_pool_fmr = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"PHYSICAL Mem.Unregister mem_h %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ib_fmr_pool_unmap failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_unreg_mem(%struct.iser_mem_reg* %0) #0 {
  %2 = alloca %struct.iser_mem_reg*, align 8
  %3 = alloca i32, align 4
  store %struct.iser_mem_reg* %0, %struct.iser_mem_reg** %2, align 8
  %4 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %2, align 8
  %5 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @iser_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %2, align 8
  %9 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.ib_pool_fmr*
  %12 = call i32 @ib_fmr_pool_unmap(%struct.ib_pool_fmr* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @iser_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %2, align 8
  %20 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @iser_dbg(i8*, i32*) #1

declare dso_local i32 @ib_fmr_pool_unmap(%struct.ib_pool_fmr*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
