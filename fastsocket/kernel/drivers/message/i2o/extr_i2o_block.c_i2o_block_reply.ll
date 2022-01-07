; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32 }
%struct.i2o_message = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"NULL reply received!\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"TID %03x error status: 0x%02x, detailed status: 0x%04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*, i32, %struct.i2o_message*)* @i2o_block_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_reply(%struct.i2o_controller* %0, i32 %1, %struct.i2o_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2o_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_message*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2o_message* %2, %struct.i2o_message** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.i2o_controller*, %struct.i2o_controller** %5, align 8
  %12 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %13 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call %struct.request* @i2o_cntxt_list_get(%struct.i2o_controller* %11, i32 %17)
  store %struct.request* %18, %struct.request** %8, align 8
  %19 = load %struct.request*, %struct.request** %8, align 8
  %20 = icmp ne %struct.request* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @osm_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

27:                                               ; preds = %3
  %28 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %29 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = ashr i32 %33, 24
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %27
  %37 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %38 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %44 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = ashr i32 %49, 12
  %51 = and i32 %50, 4095
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 24
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 65535
  %56 = call i32 (i8*, ...) @osm_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53, i32 %55)
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %36, %27
  %64 = load %struct.request*, %struct.request** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %67 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i32 @i2o_block_end_request(%struct.request* %64, i32 %65, i32 %71)
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %63, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.request* @i2o_cntxt_list_get(%struct.i2o_controller*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @osm_err(i8*, ...) #1

declare dso_local i32 @i2o_block_end_request(%struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
