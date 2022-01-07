; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.atm_vcc = type { i32*, %struct.atm_dev*, i32, %struct.TYPE_5__* }
%struct.atm_dev = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.atm_vcc* }

@atmtcp_v_dev_ops = common dso_local global i32 0, align 4
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@atmtcp_control_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @atmtcp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atm_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.atm_dev* null, %struct.atm_dev** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.atm_dev* @atm_dev_lookup(i32 %11)
  store %struct.atm_dev* %12, %struct.atm_dev** %6, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %15 = icmp ne %struct.atm_dev* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %18 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, @atmtcp_v_dev_ops
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %23 = call i32 @atm_dev_put(%struct.atm_dev* %22)
  %24 = load i32, i32* @EMEDIUMTYPE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %72

26:                                               ; preds = %16
  %27 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %28 = call %struct.TYPE_6__* @PRIV(%struct.atm_dev* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %29, align 8
  %31 = icmp ne %struct.atm_vcc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %72

35:                                               ; preds = %26
  br label %44

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @atmtcp_create(i32 %37, i32 0, %struct.atm_dev** %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %72

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %46 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %47 = call %struct.TYPE_6__* @PRIV(%struct.atm_dev* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.atm_vcc* %45, %struct.atm_vcc** %48, align 8
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 3
  store %struct.TYPE_5__* @atmtcp_control_dev, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %52 = call i32 @sk_atm(%struct.atm_vcc* %51)
  %53 = call i32 @vcc_insert_socket(i32 %52)
  %54 = load i32, i32* @ATM_VF_META, align 4
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %56 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %55, i32 0, i32 2
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  %58 = load i32, i32* @ATM_VF_READY, align 4
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %60 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %64 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %63, i32 0, i32 1
  store %struct.atm_dev* %62, %struct.atm_dev** %64, align 8
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %66 = call i32 @atm_init_aal5(%struct.atm_vcc* %65)
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %68 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %67, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @atmtcp_control_dev, i32 0, i32 0, i32 0), i32** %68, align 8
  %69 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  %70 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %44, %41, %32, %21
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.atm_dev* @atm_dev_lookup(i32) #1

declare dso_local i32 @atm_dev_put(%struct.atm_dev*) #1

declare dso_local %struct.TYPE_6__* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @atmtcp_create(i32, i32, %struct.atm_dev**) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atm_init_aal5(%struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
