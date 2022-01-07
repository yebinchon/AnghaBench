; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_driver_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_driver_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.i2o_controller = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"0x0004 Driver Store\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Module limit  : %d\0AModule count  : %d\0ACurrent space : %d kB\0AFree space    : %d kB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i2o_seq_show_driver_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_seq_show_driver_store(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2o_controller*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.i2o_controller*
  store %struct.i2o_controller* %12, %struct.i2o_controller** %6, align 8
  %13 = load %struct.i2o_controller*, %struct.i2o_controller** %6, align 8
  %14 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = bitcast [8 x i32]* %7 to i32**
  %17 = call i32 @i2o_parm_field_get(i32 %15, i32 4, i32 -1, i32** %16, i32 32)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @i2o_report_query_status(%struct.seq_file* %21, i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 10
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 10
  %36 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29, i32 %32, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @i2o_parm_field_get(i32, i32, i32, i32**, i32) #1

declare dso_local i32 @i2o_report_query_status(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
