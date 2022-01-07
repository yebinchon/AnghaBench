; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_rfc1201.c_continue_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_rfc1201.c_continue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { %struct.Outgoing }
%struct.Outgoing = type { i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.arc_hardware }
%struct.TYPE_3__ = type { i64, %struct.arc_rfc1201 }
%struct.arc_rfc1201 = type { i32, i32, i32 }
%struct.arc_hardware = type { i32 }

@XMTU = common dso_local global i32 0, align 4
@RFC1201_HDR_SIZE = common dso_local global i32 0, align 4
@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"rfc1201 continue_tx: loading segment %d(+1) of %d (seq=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @continue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @continue_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  %7 = alloca %struct.Outgoing*, align 8
  %8 = alloca %struct.arc_hardware*, align 8
  %9 = alloca %struct.arc_rfc1201*, align 8
  %10 = alloca %struct.arc_rfc1201*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %13)
  store %struct.arcnet_local* %14, %struct.arcnet_local** %6, align 8
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 0
  store %struct.Outgoing* %16, %struct.Outgoing** %7, align 8
  %17 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %18 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.arc_hardware* %20, %struct.arc_hardware** %8, align 8
  %21 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %22 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.arc_rfc1201* %25, %struct.arc_rfc1201** %9, align 8
  %26 = load i32, i32* @XMTU, align 4
  %27 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @D_DURING, align 4
  %30 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %31 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %34 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %9, align 8
  %37 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BUGMSG(i32 %29, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %41 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %47 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %51 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %49, %53
  %55 = inttoptr i64 %54 to %struct.arc_rfc1201*
  store %struct.arc_rfc1201* %55, %struct.arc_rfc1201** %10, align 8
  %56 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %57 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %2
  %61 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %62 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 2
  %65 = shl i32 %64, 1
  %66 = or i32 %65, 1
  %67 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %68 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %86

69:                                               ; preds = %2
  %70 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %71 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 1
  %74 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %75 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %9, align 8
  %77 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %80 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %9, align 8
  %82 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %85 = getelementptr inbounds %struct.arc_rfc1201, %struct.arc_rfc1201* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %69, %60
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %90 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %95 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %100 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = load %struct.arc_hardware*, %struct.arc_hardware** %8, align 8
  %105 = load %struct.arc_rfc1201*, %struct.arc_rfc1201** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @RFC1201_HDR_SIZE, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @load_pkt(%struct.net_device* %103, %struct.arc_hardware* %104, %struct.arc_rfc1201* %105, i32 %108, i32 %109)
  %111 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %112 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %116 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.Outgoing*, %struct.Outgoing** %7, align 8
  %119 = getelementptr inbounds %struct.Outgoing, %struct.Outgoing* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %124

123:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %122
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @load_pkt(%struct.net_device*, %struct.arc_hardware*, %struct.arc_rfc1201*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
