; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_unregister_compressor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_unregister_compressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32 }
%struct.compressor_entry = type { i32, %struct.compressor* }

@compressor_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppp_unregister_compressor(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.compressor_entry*, align 8
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %4 = call i32 @spin_lock(i32* @compressor_list_lock)
  %5 = load %struct.compressor*, %struct.compressor** %2, align 8
  %6 = getelementptr inbounds %struct.compressor, %struct.compressor* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.compressor_entry* @find_comp_entry(i32 %7)
  store %struct.compressor_entry* %8, %struct.compressor_entry** %3, align 8
  %9 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %10 = icmp ne %struct.compressor_entry* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %13 = getelementptr inbounds %struct.compressor_entry, %struct.compressor_entry* %12, i32 0, i32 1
  %14 = load %struct.compressor*, %struct.compressor** %13, align 8
  %15 = load %struct.compressor*, %struct.compressor** %2, align 8
  %16 = icmp eq %struct.compressor* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %19 = getelementptr inbounds %struct.compressor_entry, %struct.compressor_entry* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.compressor_entry*, %struct.compressor_entry** %3, align 8
  %22 = call i32 @kfree(%struct.compressor_entry* %21)
  br label %23

23:                                               ; preds = %17, %11, %1
  %24 = call i32 @spin_unlock(i32* @compressor_list_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.compressor_entry* @find_comp_entry(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.compressor_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
