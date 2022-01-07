; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_rmw_multiple_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_rmw_multiple_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dt9812 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dt9812_rmw_byte = type { i32 }
%struct.dt9812_usb_cmd = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.dt9812_rmw_byte* }

@DT9812_RMW_MULTI_BYTE_REG = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dt9812*, i32, %struct.dt9812_rmw_byte*)* @dt9812_rmw_multiple_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt9812_rmw_multiple_registers(%struct.usb_dt9812* %0, i32 %1, %struct.dt9812_rmw_byte* %2) #0 {
  %4 = alloca %struct.usb_dt9812*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dt9812_rmw_byte*, align 8
  %7 = alloca %struct.dt9812_usb_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_dt9812* %0, %struct.usb_dt9812** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dt9812_rmw_byte* %2, %struct.dt9812_rmw_byte** %6, align 8
  %11 = load i32, i32* @DT9812_RMW_MULTI_BYTE_REG, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dt9812_usb_cmd, %struct.dt9812_usb_cmd* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %26, i64 %28
  %30 = load %struct.dt9812_rmw_byte*, %struct.dt9812_rmw_byte** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dt9812_rmw_byte, %struct.dt9812_rmw_byte* %30, i64 %32
  %34 = bitcast %struct.dt9812_rmw_byte* %29 to i8*
  %35 = bitcast %struct.dt9812_rmw_byte* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18

39:                                               ; preds = %18
  %40 = load %struct.usb_dt9812*, %struct.usb_dt9812** %4, align 8
  %41 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_dt9812*, %struct.usb_dt9812** %4, align 8
  %44 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_dt9812*, %struct.usb_dt9812** %4, align 8
  %47 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_sndbulkpipe(i32 %45, i32 %49)
  %51 = load i32, i32* @HZ, align 4
  %52 = mul nsw i32 %51, 1
  %53 = call i32 @usb_bulk_msg(i32 %42, i32 %50, %struct.dt9812_usb_cmd* %7, i32 32, i32* %9, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @usb_bulk_msg(i32, i32, %struct.dt9812_usb_cmd*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
