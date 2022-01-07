; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_send_message_put_nacked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_send_message_put_nacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { i32, i32, i32, i32 }

@XTYPE_CL = common dso_local global i32 0, align 4
@IMA = common dso_local global i32 0, align 4
@CBS_IDLE = common dso_local global i32 0, align 4
@MQE_UNEXPECTED_CB_ERR = common dso_local global i32 0, align 4
@MQE_OK = common dso_local global i32 0, align 4
@UVH_IPI_INT = common dso_local global i32 0, align 4
@dest_Fixed = common dso_local global i32 0, align 4
@IAA_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.gru_message_queue_desc*, i8*, i32)* @send_message_put_nacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_put_nacked(i8* %0, %struct.gru_message_queue_desc* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gru_message_queue_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.gru_message_queue_desc* %1, %struct.gru_message_queue_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %11, align 8
  %17 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %18 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @gru_get_amo_value_head(i8* %20)
  %22 = shl i32 %21, 6
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* @XTYPE_CL, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IMA, align 4
  %33 = call i32 @gru_vset(i8* %28, i64 %29, i32 0, i32 %30, i32 %31, i32 1, i32 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @gru_wait(i8* %34)
  %36 = load i32, i32* @CBS_IDLE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %39, i32* %5, align 4
  br label %98

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @gru_get_tri(i8* %44)
  %46 = load i32, i32* @XTYPE_CL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IMA, align 4
  %49 = call i32 @gru_vstore(i8* %42, i64 %43, i32 %45, i32 %46, i32 %47, i32 1, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @gru_wait(i8* %50)
  %52 = load i32, i32* @CBS_IDLE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %55, i32* %5, align 4
  br label %98

56:                                               ; preds = %41
  %57 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %58 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @MQE_OK, align 4
  store i32 %62, i32* %5, align 4
  br label %98

63:                                               ; preds = %56
  %64 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %65 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @UVH_IPI_INT, align 4
  %68 = call i64 @uv_global_gru_mmr_address(i32 %66, i32 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64*, i64** %11, align 8
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %13, align 8
  %71 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %72 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %75 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @dest_Fixed, align 4
  %78 = call i64 @uv_hub_ipi_value(i32 %73, i32 %76, i32 %77)
  %79 = load i64*, i64** %11, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @gru_get_tri(i8* %82)
  %84 = load i32, i32* @IAA_REGISTER, align 4
  %85 = load i32, i32* @IMA, align 4
  %86 = call i32 @gru_vstore_phys(i8* %80, i64 %81, i32 %83, i32 %84, i32 %85)
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @gru_wait(i8* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i64, i64* %13, align 8
  %90 = load i64*, i64** %11, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @CBS_IDLE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %63
  %95 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %95, i32* %5, align 4
  br label %98

96:                                               ; preds = %63
  %97 = load i32, i32* @MQE_OK, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %94, %61, %54, %38
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @gru_get_amo_value_head(i8*) #1

declare dso_local i32 @gru_vset(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gru_wait(i8*) #1

declare dso_local i32 @gru_vstore(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gru_get_tri(i8*) #1

declare dso_local i64 @uv_global_gru_mmr_address(i32, i32) #1

declare dso_local i64 @uv_hub_ipi_value(i32, i32, i32) #1

declare dso_local i32 @gru_vstore_phys(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
