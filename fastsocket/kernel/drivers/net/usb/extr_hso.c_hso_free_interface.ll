; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_free_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.usb_interface* }
%struct.hso_serial = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.tty_struct = type { i32 }
%struct.rfkill = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.rfkill* }

@HSO_SERIAL_TTY_MINORS = common dso_local global i32 0, align 4
@serial_table = common dso_local global %struct.TYPE_10__** null, align 8
@hso_serial_ref_free = common dso_local global i32 0, align 4
@HSO_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@network_table = common dso_local global %struct.TYPE_11__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @hso_free_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_free_interface(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.hso_serial*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rfkill*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HSO_SERIAL_TTY_MINORS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %7
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %12, i64 %14
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 %21
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.usb_interface*, %struct.usb_interface** %24, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = icmp eq %struct.usb_interface* %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %18
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call %struct.hso_serial* @dev2ser(%struct.TYPE_10__* %33)
  store %struct.hso_serial* %34, %struct.hso_serial** %3, align 8
  %35 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %36 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %39 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.tty_struct* @tty_kref_get(i32 %40)
  store %struct.tty_struct* %41, %struct.tty_struct** %4, align 8
  %42 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = icmp ne %struct.tty_struct* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = call i32 @tty_hangup(%struct.tty_struct* %48)
  br label %50

50:                                               ; preds = %47, %28
  %51 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %52 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = call i32 @tty_kref_put(%struct.tty_struct* %56)
  %58 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %59 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %63 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @serial_table, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* @hso_serial_ref_free, align 4
  %74 = call i32 @kref_put(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %50, %18, %11
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %7

79:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %154, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @HSO_MAX_NET_DEVICES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %157

84:                                               ; preds = %80
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 %87
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %91, label %153

91:                                               ; preds = %84
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %92, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.usb_interface*, %struct.usb_interface** %97, align 8
  %99 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %100 = icmp eq %struct.usb_interface* %98, %99
  br i1 %100, label %101, label %153

101:                                              ; preds = %91
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %102, i64 %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = call %struct.TYPE_12__* @dev2net(%struct.TYPE_11__* %106)
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load %struct.rfkill*, %struct.rfkill** %108, align 8
  store %struct.rfkill* %109, %struct.rfkill** %6, align 8
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %110, i64 %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = call %struct.TYPE_12__* @dev2net(%struct.TYPE_11__* %114)
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @netif_stop_queue(i32 %117)
  %119 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %119, i64 %121
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = call i32 @hso_stop_net_device(%struct.TYPE_11__* %123)
  %125 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %125, i64 %127
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = call i32 @cancel_work_sync(i32* %130)
  %132 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %132, i64 %134
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = call i32 @cancel_work_sync(i32* %137)
  %139 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %140 = icmp ne %struct.rfkill* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %101
  %142 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %143 = call i32 @rfkill_unregister(%struct.rfkill* %142)
  %144 = load %struct.rfkill*, %struct.rfkill** %6, align 8
  %145 = call i32 @rfkill_destroy(%struct.rfkill* %144)
  br label %146

146:                                              ; preds = %141, %101
  %147 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @network_table, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %147, i64 %149
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = call i32 @hso_free_net_device(%struct.TYPE_11__* %151)
  br label %153

153:                                              ; preds = %146, %91, %84
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %80

157:                                              ; preds = %80
  ret void
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.tty_struct* @tty_kref_get(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @dev2net(%struct.TYPE_11__*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @hso_stop_net_device(%struct.TYPE_11__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rfkill_unregister(%struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i32 @hso_free_net_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
