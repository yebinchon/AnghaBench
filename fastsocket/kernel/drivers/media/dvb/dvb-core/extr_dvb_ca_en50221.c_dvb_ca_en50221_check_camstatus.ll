; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_check_camstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_check_camstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_CHANGED = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_NONE = common dso_local global i64 0, align 8
@DVB_CA_EN50221_CAMCHANGE_REMOVED = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_INSERTED = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_WAITREADY = common dso_local global i64 0, align 8
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_VALIDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32)* @dvb_ca_en50221_check_camstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_check_camstatus(%struct.dvb_ca_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %132

27:                                               ; preds = %2
  %28 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %31, align 8
  %33 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %32(%struct.TYPE_4__* %35, i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_CHANGED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %27
  %56 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DVB_CA_SLOTSTATE_NONE, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %55, %27
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_REMOVED, align 4
  %79 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %80 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %78, i32* %85, align 4
  br label %95

86:                                               ; preds = %74
  %87 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_INSERTED, align 4
  %88 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32 %87, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %77
  %96 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %97 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = call i32 @atomic_set(i32* %102, i32 1)
  br label %130

104:                                              ; preds = %71
  %105 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %106 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DVB_CA_SLOTSTATE_WAITREADY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %104
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i64, i64* @DVB_CA_SLOTSTATE_VALIDATE, align 8
  %122 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %123 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i64 %121, i64* %128, align 8
  br label %129

129:                                              ; preds = %120, %115, %104
  br label %130

130:                                              ; preds = %129, %95
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %16
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
