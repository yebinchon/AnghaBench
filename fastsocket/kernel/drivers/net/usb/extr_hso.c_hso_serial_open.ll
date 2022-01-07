; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.hso_serial*, i32 }
%struct.hso_serial = type { i64, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.file = type { i32 }

@HSO_SERIAL_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Failed to open port\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Opening %d\00", align 1
@RX_IDLE = common dso_local global i32 0, align 4
@hso_unthrottle_tasklet = common dso_local global i64 0, align 8
@hso_unthrottle_workfunc = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hso_serial_ref_free = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Port was already open\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @hso_serial_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_serial_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hso_serial*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.hso_serial* @get_serial_by_index(i32 %10)
  store %struct.hso_serial* %11, %struct.hso_serial** %6, align 8
  %12 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %13 = icmp eq %struct.hso_serial* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %16 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HSO_SERIAL_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14, %2
  %21 = call i32 @WARN_ON(i32 1)
  %22 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 1
  store %struct.hso_serial* null, %struct.hso_serial** %23, align 8
  %24 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %14
  %28 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %29 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %34 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_autopm_get_interface(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %137

42:                                               ; preds = %27
  %43 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %44 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %48 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = call i32 @kref_get(i32* %50)
  %52 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %53 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %52, i32 0, i32 6
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 1
  store %struct.hso_serial* %55, %struct.hso_serial** %57, align 8
  %58 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %59 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @tty_kref_put(i32 %60)
  %62 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %63 = call i32 @tty_kref_get(%struct.tty_struct* %62)
  %64 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %65 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %67 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %66, i32 0, i32 6
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %70 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %74 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %119

77:                                               ; preds = %42
  %78 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @RX_IDLE, align 4
  %81 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %82 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %84 = call i32 @_hso_serial_set_termios(%struct.tty_struct* %83, i32* null)
  %85 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %86 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %85, i32 0, i32 4
  %87 = load i64, i64* @hso_unthrottle_tasklet, align 8
  %88 = inttoptr i64 %87 to void (i64)*
  %89 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %90 = ptrtoint %struct.hso_serial* %89 to i64
  %91 = call i32 @tasklet_init(i32* %86, void (i64)* %88, i64 %90)
  %92 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %93 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %92, i32 0, i32 3
  %94 = load i32, i32* @hso_unthrottle_workfunc, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %97 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @hso_start_serial_device(%struct.TYPE_3__* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %77
  %104 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %105 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 @hso_stop_serial_device(%struct.TYPE_3__* %106)
  %108 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %109 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %113 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* @hso_serial_ref_free, align 4
  %117 = call i32 @kref_put(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %103, %77
  br label %121

119:                                              ; preds = %42
  %120 = call i32 (i8*, ...) @D1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %118
  %122 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %123 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %122, i32 0, i32 2
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @usb_autopm_put_interface(i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %132 = load i32, i32* @TIOCM_RTS, align 4
  %133 = load i32, i32* @TIOCM_DTR, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @hso_serial_tiocmset(%struct.tty_struct* %131, i32* null, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %130, %121
  br label %137

137:                                              ; preds = %136, %41
  %138 = load %struct.hso_serial*, %struct.hso_serial** %6, align 8
  %139 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %20
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.hso_serial* @get_serial_by_index(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @D1(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @tty_kref_put(i32) #1

declare dso_local i32 @tty_kref_get(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @_hso_serial_set_termios(%struct.tty_struct*, i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hso_start_serial_device(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @hso_stop_serial_device(%struct.TYPE_3__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @hso_serial_tiocmset(%struct.tty_struct*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
