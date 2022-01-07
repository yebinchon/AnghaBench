; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_delete_internal_operation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_delete_internal_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_int_operation = type { %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc*, i8* }
%struct.cryptocop_dma_desc = type { %struct.cryptocop_dma_desc* }

@.str = private unnamed_addr constant [53 x i8] c"delete_internal_operation: iop=0x%p, alloc_ptr=0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cryptocop_int_operation*)* @delete_internal_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_internal_operation(%struct.cryptocop_int_operation* %0) #0 {
  %2 = alloca %struct.cryptocop_int_operation*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cryptocop_dma_desc*, align 8
  %5 = alloca %struct.cryptocop_dma_desc*, align 8
  store %struct.cryptocop_int_operation* %0, %struct.cryptocop_int_operation** %2, align 8
  %6 = load %struct.cryptocop_int_operation*, %struct.cryptocop_int_operation** %2, align 8
  %7 = getelementptr inbounds %struct.cryptocop_int_operation, %struct.cryptocop_int_operation* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.cryptocop_int_operation*, %struct.cryptocop_int_operation** %2, align 8
  %10 = getelementptr inbounds %struct.cryptocop_int_operation, %struct.cryptocop_int_operation* %9, i32 0, i32 1
  %11 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %10, align 8
  store %struct.cryptocop_dma_desc* %11, %struct.cryptocop_dma_desc** %4, align 8
  %12 = load %struct.cryptocop_int_operation*, %struct.cryptocop_int_operation** %2, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.cryptocop_int_operation* %12, i8* %13)
  %15 = call i32 @DEBUG(i32 %14)
  br label %16

16:                                               ; preds = %19, %1
  %17 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %4, align 8
  %18 = icmp ne %struct.cryptocop_dma_desc* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %4, align 8
  %21 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %20, i32 0, i32 0
  %22 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %21, align 8
  store %struct.cryptocop_dma_desc* %22, %struct.cryptocop_dma_desc** %5, align 8
  %23 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %4, align 8
  %24 = call i32 @free_cdesc(%struct.cryptocop_dma_desc* %23)
  %25 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %5, align 8
  store %struct.cryptocop_dma_desc* %25, %struct.cryptocop_dma_desc** %4, align 8
  br label %16

26:                                               ; preds = %16
  %27 = load %struct.cryptocop_int_operation*, %struct.cryptocop_int_operation** %2, align 8
  %28 = getelementptr inbounds %struct.cryptocop_int_operation, %struct.cryptocop_int_operation* %27, i32 0, i32 0
  %29 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %28, align 8
  store %struct.cryptocop_dma_desc* %29, %struct.cryptocop_dma_desc** %4, align 8
  br label %30

30:                                               ; preds = %33, %26
  %31 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %4, align 8
  %32 = icmp ne %struct.cryptocop_dma_desc* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %4, align 8
  %35 = getelementptr inbounds %struct.cryptocop_dma_desc, %struct.cryptocop_dma_desc* %34, i32 0, i32 0
  %36 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %35, align 8
  store %struct.cryptocop_dma_desc* %36, %struct.cryptocop_dma_desc** %5, align 8
  %37 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %4, align 8
  %38 = call i32 @free_cdesc(%struct.cryptocop_dma_desc* %37)
  %39 = load %struct.cryptocop_dma_desc*, %struct.cryptocop_dma_desc** %5, align 8
  store %struct.cryptocop_dma_desc* %39, %struct.cryptocop_dma_desc** %4, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @kfree(i8* %41)
  ret void
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, %struct.cryptocop_int_operation*, i8*) #1

declare dso_local i32 @free_cdesc(%struct.cryptocop_dma_desc*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
