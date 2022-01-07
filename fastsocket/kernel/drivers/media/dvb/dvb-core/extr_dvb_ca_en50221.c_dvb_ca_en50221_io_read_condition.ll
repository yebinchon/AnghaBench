; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_io_read_condition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_io_read_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@DVB_CA_SLOTSTATE_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32*, i32*)* @dvb_ca_en50221_io_read_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_io_read_condition(%struct.dvb_ca_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %106, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %21 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  br i1 %29, label %30, label %115

30:                                               ; preds = %28
  %31 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %32 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DVB_CA_SLOTSTATE_RUNNING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %106

42:                                               ; preds = %30
  %43 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %120

54:                                               ; preds = %42
  %55 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %56 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @dvb_ringbuffer_pkt_next(%struct.TYPE_5__* %61, i32 -1, i64* %11)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %95, %54
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %105

66:                                               ; preds = %63
  %67 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %68 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %76 = call i32 @dvb_ringbuffer_pkt_read(%struct.TYPE_5__* %73, i32 %74, i32 0, i32* %75, i32 2)
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %66
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 128
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  store i32 1, i32* %13, align 4
  br label %105

95:                                               ; preds = %87, %82
  %96 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %97 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @dvb_ringbuffer_pkt_next(%struct.TYPE_5__* %102, i32 %103, i64* %11)
  store i32 %104, i32* %10, align 4
  br label %63

105:                                              ; preds = %92, %63
  br label %106

106:                                              ; preds = %105, %41
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %110 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = srem i32 %108, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %18

115:                                              ; preds = %28
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %5, align 8
  %118 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %53
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @dvb_ringbuffer_pkt_next(%struct.TYPE_5__*, i32, i64*) #1

declare dso_local i32 @dvb_ringbuffer_pkt_read(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
