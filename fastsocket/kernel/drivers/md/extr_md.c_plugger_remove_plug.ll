; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_plugger_remove_plug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_plugger_remove_plug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plug_handle = type { i32, i32 }

@PLUGGED_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plugger_remove_plug(%struct.plug_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.plug_handle*, align 8
  store %struct.plug_handle* %0, %struct.plug_handle** %3, align 8
  %4 = load i32, i32* @PLUGGED_FLAG, align 4
  %5 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %6 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %5, i32 0, i32 1
  %7 = call i64 @test_and_clear_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %11 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %10, i32 0, i32 0
  %12 = call i32 @del_timer(i32* %11)
  store i32 1, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
