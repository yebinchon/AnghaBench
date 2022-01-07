; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_get_eaddr_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_get_eaddr_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { %struct.ioc3* }
%struct.ioc3 = type { i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [28 x i8] c"Failed to read MAC address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_get_eaddr_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_get_eaddr_nic(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.ioc3*, align 8
  %4 = alloca [14 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 0
  %9 = load %struct.ioc3*, %struct.ioc3** %8, align 8
  store %struct.ioc3* %9, %struct.ioc3** %3, align 8
  store i32 2, i32* %5, align 4
  %10 = call i32 @ioc3_w_gpcr_s(i32 2097152)
  br label %11

11:                                               ; preds = %20, %1
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %17 = call i32 @nic_init(%struct.ioc3* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %15
  %21 = call i32 @udelay(i32 500)
  br label %11

22:                                               ; preds = %19, %11
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %66

27:                                               ; preds = %22
  %28 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %29 = call i32 @nic_write_byte(%struct.ioc3* %28, i32 240)
  %30 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %31 = call i32 @nic_write_byte(%struct.ioc3* %30, i32 0)
  %32 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %33 = call i32 @nic_write_byte(%struct.ioc3* %32, i32 0)
  store i32 13, i32* %6, align 4
  br label %34

34:                                               ; preds = %43, %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.ioc3*, %struct.ioc3** %3, align 8
  %39 = call i32 @nic_read_byte(%struct.ioc3* %38)
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4
  br label %34

46:                                               ; preds = %34
  store i32 2, i32* %6, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %56 = call %struct.TYPE_2__* @priv_netdev(%struct.ioc3_private* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %54, i32* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %47

66:                                               ; preds = %25, %47
  ret void
}

declare dso_local i32 @ioc3_w_gpcr_s(i32) #1

declare dso_local i32 @nic_init(%struct.ioc3*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nic_write_byte(%struct.ioc3*, i32) #1

declare dso_local i32 @nic_read_byte(%struct.ioc3*) #1

declare dso_local %struct.TYPE_2__* @priv_netdev(%struct.ioc3_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
