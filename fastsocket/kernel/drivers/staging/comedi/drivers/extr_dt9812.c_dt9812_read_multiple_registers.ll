; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_read_multiple_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_read_multiple_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dt9812 = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dt9812_usb_cmd = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.dt9812_usb_cmd* }

@DT9812_R_MULTI_BYTE_REG = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dt9812*, i32, %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd*)* @dt9812_read_multiple_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_read_multiple_registers(%struct.usb_dt9812* %0, i32 %1, %struct.dt9812_usb_cmd* %2, %struct.dt9812_usb_cmd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_dt9812*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dt9812_usb_cmd*, align 8
  %9 = alloca %struct.dt9812_usb_cmd*, align 8
  %10 = alloca %struct.dt9812_usb_cmd, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_dt9812* %0, %struct.usb_dt9812** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dt9812_usb_cmd* %2, %struct.dt9812_usb_cmd** %8, align 8
  store %struct.dt9812_usb_cmd* %3, %struct.dt9812_usb_cmd** %9, align 8
  %14 = load i32, i32* @DT9812_R_MULTI_BYTE_REG, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %10, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %39, %4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %10, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %29, i64 %31
  %33 = load %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %33, i64 %35
  %37 = bitcast %struct.dt9812_usb_cmd* %32 to i8*
  %38 = bitcast %struct.dt9812_usb_cmd* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %21

42:                                               ; preds = %21
  store i32 32, i32* %12, align 4
  %43 = load %struct.usb_dt9812*, %struct.usb_dt9812** %6, align 8
  %44 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_dt9812*, %struct.usb_dt9812** %6, align 8
  %47 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_dt9812*, %struct.usb_dt9812** %6, align 8
  %50 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @usb_sndbulkpipe(i32 %48, i32 %52)
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 %54, 1
  %56 = call i32 @usb_bulk_msg(i32 %45, i32 %53, %struct.dt9812_usb_cmd* %10, i32 32, i32* %12, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %5, align 4
  br label %79

61:                                               ; preds = %42
  %62 = load %struct.usb_dt9812*, %struct.usb_dt9812** %6, align 8
  %63 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_dt9812*, %struct.usb_dt9812** %6, align 8
  %66 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usb_dt9812*, %struct.usb_dt9812** %6, align 8
  %69 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_rcvbulkpipe(i32 %67, i32 %71)
  %73 = load %struct.dt9812_usb_cmd*, %struct.dt9812_usb_cmd** %9, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 %75, 1
  %77 = call i32 @usb_bulk_msg(i32 %64, i32 %72, %struct.dt9812_usb_cmd* %73, i32 %74, i32* %12, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %61, %59
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_bulk_msg(i32, i32, %struct.dt9812_usb_cmd*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
