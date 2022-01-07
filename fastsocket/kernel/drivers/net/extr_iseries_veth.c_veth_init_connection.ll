; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_init_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i64, i32, i32, %struct.TYPE_3__, %struct.veth_msg*, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.veth_msg = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@this_lp = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@veth_statemachine = common dso_local global i32 0, align 4
@veth_timed_ack = common dso_local global i32 0, align 4
@veth_timed_reset = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@VETH_ACKTIMEOUT = common dso_local global i32 0, align 4
@veth_cnx = common dso_local global %struct.veth_lpar_connection** null, align 8
@veth_lpar_connection_ktype = common dso_local global i32 0, align 4
@VETH_NUMBUFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't allocate buffers for LPAR %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't allocate enough events for LPAR %d.\0A\00", align 1
@ACK_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @veth_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_init_connection(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.veth_lpar_connection*, align 8
  %5 = alloca %struct.veth_msg*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @this_lp, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @this_lp, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @HvLpConfig_doLpsCommunicateOnVirtualLan(i64 %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %141

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.veth_lpar_connection* @kzalloc(i32 88, i32 %17)
  store %struct.veth_lpar_connection* %18, %struct.veth_lpar_connection** %4, align 8
  %19 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %20 = icmp ne %struct.veth_lpar_connection* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %141

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %27 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %29 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %28, i32 0, i32 10
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %32 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %31, i32 0, i32 9
  %33 = load i32, i32* @veth_statemachine, align 4
  %34 = call i32 @INIT_DELAYED_WORK(i32* %32, i32 %33)
  %35 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %36 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %35, i32 0, i32 8
  %37 = call i32 @init_timer(%struct.TYPE_4__* %36)
  %38 = load i32, i32* @veth_timed_ack, align 4
  %39 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %40 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %43 = ptrtoint %struct.veth_lpar_connection* %42 to i64
  %44 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %45 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %48 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %47, i32 0, i32 7
  %49 = call i32 @init_timer(%struct.TYPE_4__* %48)
  %50 = load i32, i32* @veth_timed_reset, align 4
  %51 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %52 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %55 = ptrtoint %struct.veth_lpar_connection* %54 to i64
  %56 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %57 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 5, %59
  %61 = load i32, i32* @VETH_ACKTIMEOUT, align 4
  %62 = sdiv i32 %61, 1000000
  %63 = mul nsw i32 %60, %62
  %64 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %65 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %67 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %66, i32 0, i32 6
  %68 = call i32 @memset(i32* %67, i32 255, i32 4)
  %69 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %70 = load %struct.veth_lpar_connection**, %struct.veth_lpar_connection*** @veth_cnx, align 8
  %71 = load i64, i64* %3, align 8
  %72 = getelementptr inbounds %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %70, i64 %71
  store %struct.veth_lpar_connection* %69, %struct.veth_lpar_connection** %72, align 8
  %73 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %74 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %73, i32 0, i32 5
  %75 = call i32 @kobject_init(i32* %74, i32* @veth_lpar_connection_ktype)
  %76 = load i32, i32* @VETH_NUMBUFFERS, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.veth_msg* @kcalloc(i32 %76, i32 4, i32 %77)
  store %struct.veth_msg* %78, %struct.veth_msg** %5, align 8
  %79 = load %struct.veth_msg*, %struct.veth_msg** %5, align 8
  %80 = icmp ne %struct.veth_msg* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %24
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @veth_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %141

86:                                               ; preds = %24
  %87 = load %struct.veth_msg*, %struct.veth_msg** %5, align 8
  %88 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %89 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %88, i32 0, i32 4
  store %struct.veth_msg* %87, %struct.veth_msg** %89, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %107, %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @VETH_NUMBUFFERS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.veth_msg*, %struct.veth_msg** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %96, i64 %98
  %100 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %102 = load %struct.veth_msg*, %struct.veth_msg** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.veth_msg, %struct.veth_msg* %102, i64 %104
  %106 = call i32 @veth_stack_push(%struct.veth_lpar_connection* %101, %struct.veth_msg* %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %90

110:                                              ; preds = %90
  %111 = load i64, i64* %3, align 8
  %112 = load i32, i32* @VETH_NUMBUFFERS, align 4
  %113 = add nsw i32 2, %112
  %114 = call i32 @veth_allocate_events(i64 %111, i32 %113)
  %115 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %116 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %118 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @VETH_NUMBUFFERS, align 4
  %121 = add nsw i32 2, %120
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %110
  %124 = load i64, i64* %3, align 8
  %125 = call i32 @veth_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %141

128:                                              ; preds = %110
  %129 = load i32, i32* @VETH_NUMBUFFERS, align 4
  %130 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %131 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* @ACK_THRESHOLD, align 4
  %134 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %135 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* @VETH_ACKTIMEOUT, align 4
  %138 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %139 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %128, %123, %81, %21, %15
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @HvLpConfig_doLpsCommunicateOnVirtualLan(i64, i64) #1

declare dso_local %struct.veth_lpar_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local %struct.veth_msg* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @veth_error(i8*, i64) #1

declare dso_local i32 @veth_stack_push(%struct.veth_lpar_connection*, %struct.veth_msg*) #1

declare dso_local i32 @veth_allocate_events(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
