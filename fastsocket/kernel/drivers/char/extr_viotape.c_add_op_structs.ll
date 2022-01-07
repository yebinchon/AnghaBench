; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_viotape.c_add_op_structs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_viotape.c_add_op_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_struct = type { %struct.op_struct* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@op_struct_list = common dso_local global %struct.op_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @add_op_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_op_structs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.op_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.op_struct* @kmalloc(i32 8, i32 %11)
  store %struct.op_struct* %12, %struct.op_struct** %5, align 8
  %13 = load %struct.op_struct*, %struct.op_struct** %5, align 8
  %14 = icmp ne %struct.op_struct* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = call i32 (...) @clear_op_struct_pool()
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.op_struct*, %struct.op_struct** @op_struct_list, align 8
  %21 = load %struct.op_struct*, %struct.op_struct** %5, align 8
  %22 = getelementptr inbounds %struct.op_struct, %struct.op_struct* %21, i32 0, i32 0
  store %struct.op_struct* %20, %struct.op_struct** %22, align 8
  %23 = load %struct.op_struct*, %struct.op_struct** %5, align 8
  store %struct.op_struct* %23, %struct.op_struct** @op_struct_list, align 8
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.op_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @clear_op_struct_pool(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
