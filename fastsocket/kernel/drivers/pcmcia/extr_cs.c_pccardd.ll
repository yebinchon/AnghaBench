; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pccardd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_pccardd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*)* }

@current = common dso_local global i32* null, align 8
@dead_socket = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCMCIA: unable to register socket\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"err %d adding socket attributes\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@CS_EVENT_BATTERY_DEAD = common dso_local global i32 0, align 4
@CS_EVENT_PRI_LOW = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@CS_EVENT_BATTERY_LOW = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@CS_EVENT_READY_CHANGE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pccardd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccardd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.pcmcia_socket*
  store %struct.pcmcia_socket* %9, %struct.pcmcia_socket** %4, align 8
  %10 = load i32*, i32** @current, align 8
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 5
  store i32* %10, i32** %12, align 8
  %13 = load i32, i32* @dead_socket, align 4
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %19, align 8
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %22 = call i32 %20(%struct.pcmcia_socket* %21)
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 7
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %26, align 8
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %29, i32 0, i32 6
  %31 = call i32 %27(%struct.pcmcia_socket* %28, i32* %30)
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %33 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %32, i32 0, i32 1
  %34 = call i32 @device_register(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = load i32, i32* @KERN_WARNING, align 4
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 1
  %41 = call i32 @dev_printk(i32 %38, i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %43 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 4
  %46 = call i32 @complete(i32* %45)
  store i32 0, i32* %2, align 4
  br label %142

47:                                               ; preds = %1
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %49 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %48, i32 0, i32 1
  %50 = call i32 @pccard_sysfs_add_socket(i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %55 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %54, i32 0, i32 1
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %59, i32 0, i32 4
  %61 = call i32 @complete(i32* %60)
  %62 = call i32 (...) @set_freezable()
  br label %63

63:                                               ; preds = %130, %122, %58
  %64 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %65 = call i32 @set_current_state(i32 %64)
  %66 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %67 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %66, i32 0, i32 3
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %71 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %74 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %76 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %75, i32 0, i32 3
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %63
  %82 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %83 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %82, i32 0, i32 2
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @SS_DETECT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %91 = call i32 @socket_detect_change(%struct.pcmcia_socket* %90)
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SS_BATDEAD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %99 = load i32, i32* @CS_EVENT_BATTERY_DEAD, align 4
  %100 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %101 = call i32 @send_event(%struct.pcmcia_socket* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SS_BATWARN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %109 = load i32, i32* @CS_EVENT_BATTERY_LOW, align 4
  %110 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %111 = call i32 @send_event(%struct.pcmcia_socket* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @SS_READY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %119 = load i32, i32* @CS_EVENT_READY_CHANGE, align 4
  %120 = load i32, i32* @CS_EVENT_PRI_LOW, align 4
  %121 = call i32 @send_event(%struct.pcmcia_socket* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %124 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %123, i32 0, i32 2
  %125 = call i32 @mutex_unlock(i32* %124)
  br label %63

126:                                              ; preds = %63
  %127 = call i64 (...) @kthread_should_stop()
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %133

130:                                              ; preds = %126
  %131 = call i32 (...) @schedule()
  %132 = call i32 (...) @try_to_freeze()
  br label %63

133:                                              ; preds = %129
  %134 = load i32, i32* @TASK_RUNNING, align 4
  %135 = call i32 @set_current_state(i32 %134)
  %136 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %137 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %136, i32 0, i32 1
  %138 = call i32 @pccard_sysfs_remove_socket(i32* %137)
  %139 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %140 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %139, i32 0, i32 1
  %141 = call i32 @device_unregister(i32* %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %133, %37
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pccard_sysfs_add_socket(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @socket_detect_change(%struct.pcmcia_socket*) #1

declare dso_local i32 @send_event(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @pccard_sysfs_remove_socket(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
