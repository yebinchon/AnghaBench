; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.atm_vcc = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i64)* @atmtcp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_ioctl(%struct.socket* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atm_vcc*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %10)
  store %struct.atm_vcc* %11, %struct.atm_vcc** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 128
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 130
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 129
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @ENOIOCTLCMD, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %17, %14, %3
  %24 = load i32, i32* @CAP_NET_ADMIN, align 4
  %25 = call i32 @capable(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %54 [
    i32 128, label %32
    i32 130, label %46
    i32 129, label %50
  ]

32:                                               ; preds = %30
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @atmtcp_attach(%struct.atm_vcc* %33, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @SS_CONNECTED, align 4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = call i32 @__module_get(i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  br label %54

46:                                               ; preds = %30
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @atmtcp_create_persistent(i32 %48)
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %30
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @atmtcp_remove_persistent(i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %30, %50, %46, %45
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %27, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @atmtcp_attach(%struct.atm_vcc*, i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @atmtcp_create_persistent(i32) #1

declare dso_local i32 @atmtcp_remove_persistent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
