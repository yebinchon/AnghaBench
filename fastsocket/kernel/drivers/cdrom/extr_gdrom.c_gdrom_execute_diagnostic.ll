; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_execute_diagnostic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_execute_diagnostic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GDROM_COM_EXECDIAG = common dso_local global i32 0, align 4
@GDROM_STATUSCOMMAND_REG = common dso_local global i32 0, align 4
@GDROM_ERROR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @gdrom_execute_diagnostic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @gdrom_execute_diagnostic() #0 {
  %1 = alloca i8, align 1
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gd, i32 0, i32 0), align 4
  %3 = call i32 @gdrom_hardreset(i32 %2)
  %4 = call i32 (...) @gdrom_wait_clrbusy()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i8 0, i8* %1, align 1
  br label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @GDROM_COM_EXECDIAG, align 4
  %9 = load i32, i32* @GDROM_STATUSCOMMAND_REG, align 4
  %10 = call i32 @ctrl_outb(i32 %8, i32 %9)
  %11 = call i32 (...) @gdrom_wait_busy_sleeps()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store i8 0, i8* %1, align 1
  br label %17

14:                                               ; preds = %7
  %15 = load i32, i32* @GDROM_ERROR_REG, align 4
  %16 = call signext i8 @ctrl_inb(i32 %15)
  store i8 %16, i8* %1, align 1
  br label %17

17:                                               ; preds = %14, %13, %6
  %18 = load i8, i8* %1, align 1
  ret i8 %18
}

declare dso_local i32 @gdrom_hardreset(i32) #1

declare dso_local i32 @gdrom_wait_clrbusy(...) #1

declare dso_local i32 @ctrl_outb(i32, i32) #1

declare dso_local i32 @gdrom_wait_busy_sleeps(...) #1

declare dso_local signext i8 @ctrl_inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
