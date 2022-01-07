; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_provider.c_iwch_alloc_fastreg_pbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_provider.c_iwch_alloc_fastreg_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { i32, i32* }
%struct.ib_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_fast_reg_page_list* (%struct.ib_device*, i32)* @iwch_alloc_fastreg_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_fast_reg_page_list* @iwch_alloc_fastreg_pbl(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_fast_reg_page_list*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fast_reg_page_list*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 16, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_fast_reg_page_list* @kmalloc(i32 %11, i32 %12)
  store %struct.ib_fast_reg_page_list* %13, %struct.ib_fast_reg_page_list** %6, align 8
  %14 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %15 = icmp ne %struct.ib_fast_reg_page_list* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ib_fast_reg_page_list* @ERR_PTR(i32 %18)
  store %struct.ib_fast_reg_page_list* %19, %struct.ib_fast_reg_page_list** %3, align 8
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %22 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %21, i64 1
  %23 = bitcast %struct.ib_fast_reg_page_list* %22 to i32*
  %24 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %25 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  %28 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %6, align 8
  store %struct.ib_fast_reg_page_list* %29, %struct.ib_fast_reg_page_list** %3, align 8
  br label %30

30:                                               ; preds = %20, %16
  %31 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %3, align 8
  ret %struct.ib_fast_reg_page_list* %31
}

declare dso_local %struct.ib_fast_reg_page_list* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_fast_reg_page_list* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
