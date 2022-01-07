; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32* }
%struct.packet_command = type { i32, i64, i32, i32, i32, i32, i32, i64 }

@ATAPI_WAIT_PC = common dso_local global i32 0, align 4
@CGC_DATA_WRITE = common dso_local global i64 0, align 8
@REQ_WRITE = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_packet(%struct.cdrom_device_info* %0, %struct.packet_command* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.packet_command* %1, %struct.packet_command** %4, align 8
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %12 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ATAPI_WAIT_PC, align 4
  %20 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %24 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CGC_DATA_WRITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @REQ_WRITE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %34 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memset(i32 %40, i32 0, i32 4)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @REQ_QUIET, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %57 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CGC_DATA_WRITE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %63 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %66 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %69 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ide_cd_queue_pc(i32* %52, i32 %55, i32 %61, i32 %64, i32* %7, i32 %67, i32 %70, i32 %71)
  %73 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %74 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %76 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %51
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %82 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %51
  %86 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %87 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  ret i32 %88
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ide_cd_queue_pc(i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
