; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_upload_initvals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_upload_initvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_firmware }
%struct.b43_firmware = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.b43_fw_header = type { i32 }
%struct.b43_iv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_upload_initvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_upload_initvals(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.b43_fw_header*, align 8
  %5 = alloca %struct.b43_firmware*, align 8
  %6 = alloca %struct.b43_iv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i64 4, i64* %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_firmware* %10, %struct.b43_firmware** %5, align 8
  %11 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %12 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.b43_fw_header*
  store %struct.b43_fw_header* %17, %struct.b43_fw_header** %4, align 8
  %18 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %19 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 4
  %25 = inttoptr i64 %24 to %struct.b43_iv*
  store %struct.b43_iv* %25, %struct.b43_iv** %6, align 8
  %26 = load %struct.b43_fw_header*, %struct.b43_fw_header** %4, align 8
  %27 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @be32_to_cpu(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load %struct.b43_iv*, %struct.b43_iv** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %34 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, 4
  %40 = call i32 @b43_write_initvals(%struct.b43_wldev* %30, %struct.b43_iv* %31, i64 %32, i64 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %86

44:                                               ; preds = %1
  %45 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %46 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %52 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.b43_fw_header*
  store %struct.b43_fw_header* %57, %struct.b43_fw_header** %4, align 8
  %58 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %59 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 4
  %65 = inttoptr i64 %64 to %struct.b43_iv*
  store %struct.b43_iv* %65, %struct.b43_iv** %6, align 8
  %66 = load %struct.b43_fw_header*, %struct.b43_fw_header** %4, align 8
  %67 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @be32_to_cpu(i32 %68)
  store i64 %69, i64* %7, align 8
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load %struct.b43_iv*, %struct.b43_iv** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.b43_firmware*, %struct.b43_firmware** %5, align 8
  %74 = getelementptr inbounds %struct.b43_firmware, %struct.b43_firmware* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 4
  %80 = call i32 @b43_write_initvals(%struct.b43_wldev* %70, %struct.b43_iv* %71, i64 %72, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %50
  br label %86

84:                                               ; preds = %50
  br label %85

85:                                               ; preds = %84, %44
  br label %86

86:                                               ; preds = %85, %83, %43
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @b43_write_initvals(%struct.b43_wldev*, %struct.b43_iv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
