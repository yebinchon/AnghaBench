; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851.c_ks8851_rdreg16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851.c_ks8851_rdreg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8851_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks8851_net*, i32)* @ks8851_rdreg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_rdreg16(%struct.ks8851_net* %0, i32 %1) #0 {
  %3 = alloca %struct.ks8851_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ks8851_net* %0, %struct.ks8851_net** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 12, i32 3
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MK_OP(i32 %11, i32 %12)
  %14 = bitcast i64* %5 to i32*
  %15 = call i32 @ks8851_rdreg(%struct.ks8851_net* %6, i32 %13, i32* %14, i32 2)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @le16_to_cpu(i64 %16)
  ret i32 %17
}

declare dso_local i32 @ks8851_rdreg(%struct.ks8851_net*, i32, i32*, i32) #1

declare dso_local i32 @MK_OP(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
