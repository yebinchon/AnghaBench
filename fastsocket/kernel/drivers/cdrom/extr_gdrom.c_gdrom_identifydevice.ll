; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_identifydevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_identifydevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDROM_COM_IDDEV = common dso_local global i32 0, align 4
@GDROM_STATUSCOMMAND_REG = common dso_local global i32 0, align 4
@GDROM_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gdrom_identifydevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdrom_identifydevice(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i16*
  store i16* %6, i16** %4, align 8
  %7 = call i32 (...) @gdrom_wait_clrbusy()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @gdrom_getsense(i32* null)
  br label %33

11:                                               ; preds = %1
  %12 = load i32, i32* @GDROM_COM_IDDEV, align 4
  %13 = load i32, i32* @GDROM_STATUSCOMMAND_REG, align 4
  %14 = call i32 @ctrl_outb(i32 %12, i32 %13)
  %15 = call i32 (...) @gdrom_wait_busy_sleeps()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call i32 @gdrom_getsense(i32* null)
  br label %33

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 40
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* @GDROM_DATA_REG, align 4
  %25 = call signext i16 @ctrl_inw(i32 %24)
  %26 = load i16*, i16** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  store i16 %25, i16* %29, align 2
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %20

33:                                               ; preds = %9, %17, %20
  ret void
}

declare dso_local i32 @gdrom_wait_clrbusy(...) #1

declare dso_local i32 @gdrom_getsense(i32*) #1

declare dso_local i32 @ctrl_outb(i32, i32) #1

declare dso_local i32 @gdrom_wait_busy_sleeps(...) #1

declare dso_local signext i16 @ctrl_inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
