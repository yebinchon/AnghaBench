; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_upload_initvals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_upload_initvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_firmware }
%struct.b43legacy_firmware = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.b43legacy_fw_header = type { i32 }
%struct.b43legacy_iv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_upload_initvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_upload_initvals(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.b43legacy_fw_header*, align 8
  %5 = alloca %struct.b43legacy_firmware*, align 8
  %6 = alloca %struct.b43legacy_iv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  store i64 4, i64* %3, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 0
  store %struct.b43legacy_firmware* %10, %struct.b43legacy_firmware** %5, align 8
  %11 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %12 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.b43legacy_fw_header*
  store %struct.b43legacy_fw_header* %16, %struct.b43legacy_fw_header** %4, align 8
  %17 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %18 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 4
  %23 = inttoptr i64 %22 to %struct.b43legacy_iv*
  store %struct.b43legacy_iv* %23, %struct.b43legacy_iv** %6, align 8
  %24 = load %struct.b43legacy_fw_header*, %struct.b43legacy_fw_header** %4, align 8
  %25 = getelementptr inbounds %struct.b43legacy_fw_header, %struct.b43legacy_fw_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be32_to_cpu(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = load %struct.b43legacy_iv*, %struct.b43legacy_iv** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %32 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %35, 4
  %37 = call i32 @b43legacy_write_initvals(%struct.b43legacy_wldev* %28, %struct.b43legacy_iv* %29, i64 %30, i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %79

41:                                               ; preds = %1
  %42 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %43 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %48 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.b43legacy_fw_header*
  store %struct.b43legacy_fw_header* %52, %struct.b43legacy_fw_header** %4, align 8
  %53 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %54 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 4
  %59 = inttoptr i64 %58 to %struct.b43legacy_iv*
  store %struct.b43legacy_iv* %59, %struct.b43legacy_iv** %6, align 8
  %60 = load %struct.b43legacy_fw_header*, %struct.b43legacy_fw_header** %4, align 8
  %61 = getelementptr inbounds %struct.b43legacy_fw_header, %struct.b43legacy_fw_header* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @be32_to_cpu(i32 %62)
  store i64 %63, i64* %7, align 8
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %65 = load %struct.b43legacy_iv*, %struct.b43legacy_iv** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.b43legacy_firmware*, %struct.b43legacy_firmware** %5, align 8
  %68 = getelementptr inbounds %struct.b43legacy_firmware, %struct.b43legacy_firmware* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 4
  %73 = call i32 @b43legacy_write_initvals(%struct.b43legacy_wldev* %64, %struct.b43legacy_iv* %65, i64 %66, i64 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  br label %79

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %78, %76, %40
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @b43legacy_write_initvals(%struct.b43legacy_wldev*, %struct.b43legacy_iv*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
