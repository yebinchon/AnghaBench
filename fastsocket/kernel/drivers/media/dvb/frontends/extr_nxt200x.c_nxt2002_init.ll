; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt2002_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt2002_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state* }
%struct.nxt200x_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"nxt2002: Waiting for firmware upload (%s)...\0A\00", align 1
@NXT2002_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"nxt2002: Waiting for firmware upload(2)...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"nxt2002: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"nxt2002: Writing firmware to device failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"nxt2002: Firmware upload complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @nxt2002_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt2002_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.nxt200x_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.nxt200x_state*, %struct.nxt200x_state** %9, align 8
  store %struct.nxt200x_state* %10, %struct.nxt200x_state** %4, align 8
  %11 = load i32, i32* @NXT2002_DEFAULT_FIRMWARE, align 4
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @NXT2002_DEFAULT_FIRMWARE, align 4
  %14 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %15 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @request_firmware(%struct.firmware** %5, i32 %13, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %1
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = load %struct.firmware*, %struct.firmware** %5, align 8
  %30 = call i32 @nxt2002_load_firmware(%struct.dvb_frontend* %28, %struct.firmware* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.firmware*, %struct.firmware** %5, align 8
  %32 = call i32 @release_firmware(%struct.firmware* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %73

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %41 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %45 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %43, i32 43, i32* %44, i32 1)
  %46 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %47 = call i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state* %46)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 15, i32* %48, align 4
  %49 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %49, i32 8, i32* %50, i32 1)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %55 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %53, i32 8, i32* %54, i32 1)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 241, i32* %56, align 4
  %57 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %59 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %57, i32 87, i32* %58, i32 1)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 32, i32* %60, align 4
  %61 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %63 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %61, i32 9, i32* %62, i32 1)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 126, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %68 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %66, i32 233, i32* %67, i32 2)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %72 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %70, i32 204, i32* %71, i32 1)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %38, %35, %24
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @nxt2002_load_firmware(%struct.dvb_frontend*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @nxt200x_microcontroller_stop(%struct.nxt200x_state*) #1

declare dso_local i32 @nxt200x_writebytes(%struct.nxt200x_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
