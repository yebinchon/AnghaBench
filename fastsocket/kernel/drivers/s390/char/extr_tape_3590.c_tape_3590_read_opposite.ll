; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_read_opposite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_read_opposite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_2__, %struct.tape_3590_disc_data*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.tape_3590_disc_data = type { i32 }
%struct.tape_request = type { i64, i32 }

@TO_RBA = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@FORSPACEBLOCK = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xrop ccwg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*, %struct.tape_request*)* @tape_3590_read_opposite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_read_opposite(%struct.tape_device* %0, %struct.tape_request* %1) #0 {
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.tape_request*, align 8
  %5 = alloca %struct.tape_3590_disc_data*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  store %struct.tape_request* %1, %struct.tape_request** %4, align 8
  %6 = load i32, i32* @TO_RBA, align 4
  %7 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %8 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %10 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @MODE_SET_DB, align 4
  %13 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %14 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @tape_ccw_cc(i64 %11, i32 %12, i32 1, i32* %15)
  %17 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %18 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %17, i32 0, i32 1
  %19 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %18, align 8
  store %struct.tape_3590_disc_data* %19, %struct.tape_3590_disc_data** %5, align 8
  %20 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %21 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.tape_3590_disc_data*, %struct.tape_3590_disc_data** %5, align 8
  %25 = getelementptr inbounds %struct.tape_3590_disc_data, %struct.tape_3590_disc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %28 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tape_ccw_cc_idal(i64 %23, i32 %26, i32 %30)
  %32 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %33 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = load i32, i32* @FORSPACEBLOCK, align 4
  %37 = call i32 @tape_ccw_cc(i64 %35, i32 %36, i32 0, i32* null)
  %38 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %39 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 3
  %42 = load i32, i32* @NOP, align 4
  %43 = call i32 @tape_ccw_end(i64 %41, i32 %42, i32 0, i32* null)
  %44 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_ccw_cc_idal(i64, i32, i32) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
