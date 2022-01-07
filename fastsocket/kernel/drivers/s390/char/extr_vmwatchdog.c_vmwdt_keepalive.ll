; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmwatchdog.c_vmwdt_keepalive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmwatchdog.c_vmwdt_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmwdt_keepalive.ebc_cmd = internal global i8* null, align 8
@MAX_CMDLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmwdt_cmd = common dso_local global i32 0, align 4
@vmwdt_conceal = common dso_local global i64 0, align 8
@wdt_init = common dso_local global i32 0, align 4
@wdt_conceal = common dso_local global i32 0, align 4
@VMWDT_RUNNING = common dso_local global i32 0, align 4
@vmwdt_is_open = common dso_local global i32 0, align 4
@vmwdt_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmwdt_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmwdt_keepalive() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_CMDLEN, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 %5, i32 %6)
  store i8* %7, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %8 = load i8*, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %48

13:                                               ; preds = %0
  %14 = load i8*, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %15 = load i32, i32* @vmwdt_cmd, align 4
  %16 = load i32, i32* @MAX_CMDLEN, align 4
  %17 = call i64 @strlcpy(i8* %14, i32 %15, i32 %16)
  store i64 %17, i64* %2, align 8
  %18 = load i8*, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %19 = load i32, i32* @MAX_CMDLEN, align 4
  %20 = call i32 @ASCEBC(i8* %18, i32 %19)
  %21 = load i8*, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %22 = load i32, i32* @MAX_CMDLEN, align 4
  %23 = call i32 @EBC_TOUPPER(i8* %21, i32 %22)
  %24 = load i64, i64* @vmwdt_conceal, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @wdt_init, align 4
  %28 = load i32, i32* @wdt_conceal, align 4
  %29 = or i32 %27, %28
  br label %32

30:                                               ; preds = %13
  %31 = load i32, i32* @wdt_init, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %29, %26 ], [ %31, %30 ]
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @VMWDT_RUNNING, align 4
  %35 = call i32 @set_bit(i32 %34, i32* @vmwdt_is_open)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @vmwdt_interval, align 4
  %38 = load i8*, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @__diag288(i32 %36, i32 %37, i8* %38, i64 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load i8*, i8** @vmwdt_keepalive.ebc_cmd, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %32, %10
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @EBC_TOUPPER(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__diag288(i32, i32, i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
