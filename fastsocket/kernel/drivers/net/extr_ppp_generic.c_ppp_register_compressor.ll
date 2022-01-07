; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_register_compressor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_register_compressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32 }
%struct.compressor_entry = type { i32, %struct.compressor* }

@compressor_list_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@compressor_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppp_register_compressor(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.compressor_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %5 = call i32 @spin_lock(i32* @compressor_list_lock)
  %6 = load i32, i32* @EEXIST, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.compressor*, %struct.compressor** %2, align 8
  %9 = getelementptr inbounds %struct.compressor, %struct.compressor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @find_comp_entry(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.compressor_entry* @kmalloc(i32 16, i32 %17)
  store %struct.compressor_entry* %18, %struct.compressor_entry** %3, align 8
  %19 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %20 = icmp ne %struct.compressor_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %29

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  %23 = load %struct.compressor*, %struct.compressor** %2, align 8
  %24 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %25 = getelementptr inbounds %struct.compressor_entry, %struct.compressor_entry* %24, i32 0, i32 1
  store %struct.compressor* %23, %struct.compressor** %25, align 8
  %26 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %27 = getelementptr inbounds %struct.compressor_entry, %struct.compressor_entry* %26, i32 0, i32 0
  %28 = call i32 @list_add(i32* %27, i32* @compressor_list)
  br label %29

29:                                               ; preds = %22, %21, %13
  %30 = call i32 @spin_unlock(i32* @compressor_list_lock)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_comp_entry(i32) #1

declare dso_local %struct.compressor_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
