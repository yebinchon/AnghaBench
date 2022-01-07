; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_config_roms.c_hpsb_default_host_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_config_roms.c_hpsb_default_host_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.csr1212_keyval* }
%struct.csr1212_keyval = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"Linux - %s\00", align 1
@CSR1212_KV_ID_VENDOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_default_host_entry(%struct.hpsb_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca %struct.csr1212_keyval*, align 8
  %6 = alloca %struct.csr1212_keyval*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %5, align 8
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %6, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %11 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %17 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %20, align 8
  store %struct.csr1212_keyval* %21, %struct.csr1212_keyval** %4, align 8
  %22 = load i32, i32* @CSR1212_KV_ID_VENDOR, align 4
  %23 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %24 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 8
  %28 = call %struct.csr1212_keyval* @csr1212_new_immediate(i32 %22, i32 %27)
  store %struct.csr1212_keyval* %28, %struct.csr1212_keyval** %5, align 8
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %30 = call %struct.csr1212_keyval* @csr1212_new_string_descriptor_leaf(i8* %29)
  store %struct.csr1212_keyval* %30, %struct.csr1212_keyval** %6, align 8
  %31 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %32 = icmp ne %struct.csr1212_keyval* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %35 = icmp ne %struct.csr1212_keyval* %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %38 = icmp ne %struct.csr1212_keyval* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %41 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %44 = icmp ne %struct.csr1212_keyval* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %47 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %50 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @csr1212_destroy_csr(%struct.TYPE_6__* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %81

56:                                               ; preds = %33
  %57 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %58 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %59 = call i32 @csr1212_associate_keyval(%struct.csr1212_keyval* %57, %struct.csr1212_keyval* %58)
  %60 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %61 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %60)
  %62 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %63 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %64 = call i32 @csr1212_attach_keyval_to_directory(%struct.csr1212_keyval* %62, %struct.csr1212_keyval* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %66 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @CSR1212_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %72 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 @csr1212_destroy_csr(%struct.TYPE_6__* %74)
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %56
  %79 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %80 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %70, %48
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.csr1212_keyval* @csr1212_new_immediate(i32, i32) #1

declare dso_local %struct.csr1212_keyval* @csr1212_new_string_descriptor_leaf(i8*) #1

declare dso_local i32 @csr1212_release_keyval(%struct.csr1212_keyval*) #1

declare dso_local i32 @csr1212_destroy_csr(%struct.TYPE_6__*) #1

declare dso_local i32 @csr1212_associate_keyval(%struct.csr1212_keyval*, %struct.csr1212_keyval*) #1

declare dso_local i32 @csr1212_attach_keyval_to_directory(%struct.csr1212_keyval*, %struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
