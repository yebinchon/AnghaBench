; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_thread_update_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_thread_update_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_ca_private*)* @dvb_ca_en50221_thread_update_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_ca_en50221_thread_update_delay(%struct.dvb_ca_private* %0) #0 {
  %2 = alloca %struct.dvb_ca_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %2, align 8
  store i32 100000000, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %97, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %100

12:                                               ; preds = %6
  %13 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %21 [
    i32 133, label %22
    i32 135, label %35
    i32 131, label %48
    i32 128, label %48
    i32 130, label %48
    i32 129, label %48
    i32 134, label %48
    i32 132, label %51
  ]

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %12, %21
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %23, 60
  store i32 %24, i32* %3, align 4
  %25 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %32, 5
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %22
  br label %90

35:                                               ; preds = %12
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 %36, 60
  store i32 %37, i32* %3, align 4
  %38 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %39 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @HZ, align 4
  %46 = sdiv i32 %45, 10
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %35
  br label %90

48:                                               ; preds = %12, %12, %12, %12, %12
  %49 = load i32, i32* @HZ, align 4
  %50 = sdiv i32 %49, 10
  store i32 %50, i32* %3, align 4
  br label %90

51:                                               ; preds = %12
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 %52, 60
  store i32 %53, i32* %3, align 4
  %54 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %55 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @HZ, align 4
  %62 = sdiv i32 %61, 10
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %51
  %64 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %65 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %70 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %80 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_DA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78, %68
  %86 = load i32, i32* @HZ, align 4
  %87 = sdiv i32 %86, 10
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %63
  br label %90

90:                                               ; preds = %89, %48, %47, %34
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %6

100:                                              ; preds = %6
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %103 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
