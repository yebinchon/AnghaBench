; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_process_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_process_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32, i32, i32, %struct.veth_cap_data }
%struct.veth_cap_data = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@VETH_MAX_ACKS_PER_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Received incompatible capabilities from LPAR %d.\0A\00", align 1
@HvLpEvent_Rc_InvalidSubtypeData = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Couldn't allocate enough ack events for LPAR %d.\0A\00", align 1
@HvLpEvent_Rc_BufferNotAvailable = common dso_local global i32 0, align 4
@HvLpEvent_Rc_Good = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.veth_lpar_connection*)* @veth_process_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_process_caps(%struct.veth_lpar_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.veth_lpar_connection*, align 8
  %4 = alloca %struct.veth_cap_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.veth_lpar_connection* %0, %struct.veth_lpar_connection** %3, align 8
  %7 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %8 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %7, i32 0, i32 3
  store %struct.veth_cap_data* %8, %struct.veth_cap_data** %4, align 8
  %9 = load %struct.veth_cap_data*, %struct.veth_cap_data** %4, align 8
  %10 = getelementptr inbounds %struct.veth_cap_data, %struct.veth_cap_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sdiv i32 %13, 1000000
  %15 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %16 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.veth_cap_data*, %struct.veth_cap_data** %4, align 8
  %18 = getelementptr inbounds %struct.veth_cap_data, %struct.veth_cap_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %1
  %22 = load %struct.veth_cap_data*, %struct.veth_cap_data** %4, align 8
  %23 = getelementptr inbounds %struct.veth_cap_data, %struct.veth_cap_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VETH_MAX_ACKS_PER_MSG, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = load %struct.veth_cap_data*, %struct.veth_cap_data** %4, align 8
  %29 = getelementptr inbounds %struct.veth_cap_data, %struct.veth_cap_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %34 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32, %27, %21, %1
  %38 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %39 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @veth_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @HvLpEvent_Rc_InvalidSubtypeData, align 4
  store i32 %42, i32* %2, align 4
  br label %90

43:                                               ; preds = %32
  %44 = load %struct.veth_cap_data*, %struct.veth_cap_data** %4, align 8
  %45 = getelementptr inbounds %struct.veth_cap_data, %struct.veth_cap_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.veth_cap_data*, %struct.veth_cap_data** %4, align 8
  %48 = getelementptr inbounds %struct.veth_cap_data, %struct.veth_cap_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %46, %49
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %53 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %43
  %58 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %59 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %63 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = call i32 @veth_allocate_events(i32 %60, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %72 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %57
  %76 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %77 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %3, align 8
  %83 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @veth_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @HvLpEvent_Rc_BufferNotAvailable, align 4
  store i32 %86, i32* %2, align 4
  br label %90

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %43
  %89 = load i32, i32* @HvLpEvent_Rc_Good, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %81, %37
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @veth_error(i8*, i32) #1

declare dso_local i32 @veth_allocate_events(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
