; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { %struct.zcrypt_device* }
%struct.zcrypt_device = type { %struct.zcrypt_ops* }
%struct.zcrypt_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_device*)* @zcrypt_cex2a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcrypt_cex2a_remove(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca %struct.zcrypt_device*, align 8
  %4 = alloca %struct.zcrypt_ops*, align 8
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %5 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %6 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %5, i32 0, i32 0
  %7 = load %struct.zcrypt_device*, %struct.zcrypt_device** %6, align 8
  store %struct.zcrypt_device* %7, %struct.zcrypt_device** %3, align 8
  %8 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %9 = getelementptr inbounds %struct.zcrypt_device, %struct.zcrypt_device* %8, i32 0, i32 0
  %10 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %9, align 8
  store %struct.zcrypt_ops* %10, %struct.zcrypt_ops** %4, align 8
  %11 = load %struct.zcrypt_device*, %struct.zcrypt_device** %3, align 8
  %12 = call i32 @zcrypt_device_unregister(%struct.zcrypt_device* %11)
  %13 = load %struct.zcrypt_ops*, %struct.zcrypt_ops** %4, align 8
  %14 = call i32 @zcrypt_msgtype_release(%struct.zcrypt_ops* %13)
  ret void
}

declare dso_local i32 @zcrypt_device_unregister(%struct.zcrypt_device*) #1

declare dso_local i32 @zcrypt_msgtype_release(%struct.zcrypt_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
