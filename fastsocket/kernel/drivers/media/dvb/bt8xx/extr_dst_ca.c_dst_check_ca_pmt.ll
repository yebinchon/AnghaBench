; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst_ca.c_dst_check_ca_pmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst_ca.c_dst_check_ca_pmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%struct.ca_msg = type { i32 }

@GET_REPLY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c" ca_set_pmt.. failed !\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" Not there yet\00", align 1
@NO_REPLY = common dso_local global i32 0, align 4
@DST_CA_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" ca_set_pmt.. success !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*)* @dst_check_ca_pmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_check_ca_pmt(%struct.dst_state* %0, %struct.ca_msg* %1, %struct.ca_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca %struct.ca_msg*, align 8
  %7 = alloca %struct.ca_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store %struct.ca_msg* %1, %struct.ca_msg** %6, align 8
  store %struct.ca_msg* %2, %struct.ca_msg** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %13 = load %struct.ca_msg*, %struct.ca_msg** %6, align 8
  %14 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %15 = load i32, i32* @GET_REPLY, align 4
  %16 = call i64 @ca_set_pmt(%struct.dst_state* %12, %struct.ca_msg* %13, %struct.ca_msg* %14, i32 1, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @verbose, align 4
  %20 = load i32, i32* @DST_CA_ERROR, align 4
  %21 = call i32 @dprintk(i32 %19, i32 %20, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

22:                                               ; preds = %11
  %23 = load i32, i32* @verbose, align 4
  %24 = load i32, i32* @DST_CA_ERROR, align 4
  %25 = call i32 @dprintk(i32 %23, i32 %24, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %31 = load %struct.ca_msg*, %struct.ca_msg** %6, align 8
  %32 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %33 = load i32, i32* @NO_REPLY, align 4
  %34 = call i64 @ca_set_pmt(%struct.dst_state* %30, %struct.ca_msg* %31, %struct.ca_msg* %32, i32 0, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @verbose, align 4
  %38 = load i32, i32* @DST_CA_ERROR, align 4
  %39 = call i32 @dprintk(i32 %37, i32 %38, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load i32, i32* @verbose, align 4
  %42 = load i32, i32* @DST_CA_NOTICE, align 4
  %43 = call i32 @dprintk(i32 %41, i32 %42, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %26
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %36, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @ca_set_pmt(%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
