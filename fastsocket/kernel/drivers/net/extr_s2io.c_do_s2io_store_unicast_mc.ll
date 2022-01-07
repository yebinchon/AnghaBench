; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_do_s2io_store_unicast_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_do_s2io_store_unicast_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.config_param }
%struct.config_param = type { i32 }

@FAILURE = common dso_local global i64 0, align 8
@S2IO_DISABLE_MAC_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @do_s2io_store_unicast_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_s2io_store_unicast_mc(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_param*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %7 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %6, i32 0, i32 0
  store %struct.config_param* %7, %struct.config_param** %5, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.config_param*, %struct.config_param** %5, align 8
  %11 = getelementptr inbounds %struct.config_param, %struct.config_param* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @do_s2io_read_unicast_mc(%struct.s2io_nic* %15, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @FAILURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i64, i64* @S2IO_DISABLE_MAC_ENTRY, align 8
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @do_s2io_copy_mac_addr(%struct.s2io_nic* %24, i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %8

31:                                               ; preds = %8
  ret void
}

declare dso_local i64 @do_s2io_read_unicast_mc(%struct.s2io_nic*, i32) #1

declare dso_local i32 @do_s2io_copy_mac_addr(%struct.s2io_nic*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
