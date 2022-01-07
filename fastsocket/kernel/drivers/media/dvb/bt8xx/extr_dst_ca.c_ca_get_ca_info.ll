; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst_ca.c_ca_get_ca_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst_ca.c_ca_get_ca_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32* }

@ca_get_ca_info.slot_command = internal global [8 x i32] [i32 7, i32 64, i32 0, i32 0, i32 2, i32 0, i32 0, i32 255], align 16
@GET_REPLY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" -->dst_put_ci FAILED !\00", align 1
@DST_CA_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" -->dst_put_ci SUCCESS !\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" DST data = [\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid number of ids (>100). Recovering.\00", align 1
@CA_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c" CA_INFO = [\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" 0x%02x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @ca_get_ca_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca_get_ca_info(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  store i32 8, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 7, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ca_get_ca_info.slot_command, i64 0, i64 0), align 16
  %12 = call i32 @put_checksum(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ca_get_ca_info.slot_command, i64 0, i64 0), i32 %11)
  %13 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @GET_REPLY, align 4
  %18 = call i64 @dst_put_ci(%struct.dst_state* %13, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @ca_get_ca_info.slot_command, i64 0, i64 0), i32 32, i32* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @verbose, align 4
  %22 = load i32, i32* @DST_CA_ERROR, align 4
  %23 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %21, i32 %22, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %146

24:                                               ; preds = %1
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @DST_CA_INFO, align 4
  %27 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %25, i32 %26, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @verbose, align 4
  %29 = load i32, i32* @DST_CA_INFO, align 4
  %30 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %28, i32 %29, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %34 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load i32, i32* @verbose, align 4
  %42 = load i32, i32* @DST_CA_INFO, align 4
  %43 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %44 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %41, i32 %42, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load i32, i32* @verbose, align 4
  %56 = load i32, i32* @DST_CA_INFO, align 4
  %57 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %55, i32 %56, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %59 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 100
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  store i32 100, i32* %7, align 4
  %66 = load i32, i32* @verbose, align 4
  %67 = load i32, i32* @DST_CA_ERROR, align 4
  %68 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %66, i32 %67, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %54
  %70 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %71 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* @CA_INFO, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %75, 2
  %77 = call i32 @put_command_and_length(i32* %73, i32 %74, i32 %76)
  %78 = load i32, i32* @verbose, align 4
  %79 = load i32, i32* @DST_CA_INFO, align 4
  %80 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %78, i32 %79, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 8, i32* %4, align 4
  store i32 4, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %139, %69
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %142

85:                                               ; preds = %81
  %86 = load i32, i32* @verbose, align 4
  %87 = load i32, i32* @DST_CA_INFO, align 4
  %88 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %89 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 0
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %97 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %86, i32 %87, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %95, i32 %103)
  %105 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %106 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 0
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %114 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 0
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %121 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %129 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %127, i32* %134, align 4
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %85
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %81

142:                                              ; preds = %81
  %143 = load i32, i32* @verbose, align 4
  %144 = load i32, i32* @DST_CA_INFO, align 4
  %145 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %143, i32 %144, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %20
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @put_checksum(i32*, i32) #1

declare dso_local i64 @dst_put_ci(%struct.dst_state*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @put_command_and_length(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
