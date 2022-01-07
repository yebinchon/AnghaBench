; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc.c_hdlc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc.c_hdlc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdlc_proto = type { i32 (%struct.net_device*, %struct.ifreq*)*, %struct.hdlc_proto* }
%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, %struct.ifreq*)* }

@first_proto = common dso_local global %struct.hdlc_proto* null, align 8
@SIOCWANDEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdlc_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdlc_proto*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hdlc_proto*, %struct.hdlc_proto** @first_proto, align 8
  store %struct.hdlc_proto* %10, %struct.hdlc_proto** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SIOCWANDEV, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.net_device*, %struct.ifreq*)*, i32 (%struct.net_device*, %struct.ifreq*)** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %32 = call i32 %29(%struct.net_device* %30, %struct.ifreq* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %17
  br label %41

41:                                               ; preds = %56, %40
  %42 = load %struct.hdlc_proto*, %struct.hdlc_proto** %8, align 8
  %43 = icmp ne %struct.hdlc_proto* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.hdlc_proto*, %struct.hdlc_proto** %8, align 8
  %46 = getelementptr inbounds %struct.hdlc_proto, %struct.hdlc_proto* %45, i32 0, i32 0
  %47 = load i32 (%struct.net_device*, %struct.ifreq*)*, i32 (%struct.net_device*, %struct.ifreq*)** %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %50 = call i32 %47(%struct.net_device* %48, %struct.ifreq* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.hdlc_proto*, %struct.hdlc_proto** %8, align 8
  %58 = getelementptr inbounds %struct.hdlc_proto, %struct.hdlc_proto* %57, i32 0, i32 1
  %59 = load %struct.hdlc_proto*, %struct.hdlc_proto** %58, align 8
  store %struct.hdlc_proto* %59, %struct.hdlc_proto** %8, align 8
  br label %41

60:                                               ; preds = %41
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %54, %37, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
