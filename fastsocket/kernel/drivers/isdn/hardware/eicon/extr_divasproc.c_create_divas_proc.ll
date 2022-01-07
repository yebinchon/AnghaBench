; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasproc.c_create_divas_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasproc.c_create_divas_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@divas_proc_name = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@proc_net_eicon = common dso_local global i32 0, align 4
@divas_fops = common dso_local global i32 0, align 4
@divas_proc_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_divas_proc() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @divas_proc_name, align 4
  %3 = load i32, i32* @S_IFREG, align 4
  %4 = load i32, i32* @S_IRUGO, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @proc_net_eicon, align 4
  %7 = call i32 @proc_create(i32 %2, i32 %5, i32 %6, i32* @divas_fops)
  store i32 %7, i32* @divas_proc_entry, align 4
  %8 = load i32, i32* @divas_proc_entry, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @proc_create(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
