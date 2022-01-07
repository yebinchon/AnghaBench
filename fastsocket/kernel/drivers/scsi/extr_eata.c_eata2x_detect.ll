; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"eata2x\00", align 1
@boot_options = common dso_local global i32 0, align 4
@MAX_INT_PARAM = common dso_local global i64 0, align 8
@io_port = common dso_local global i64* null, align 8
@SKIP = common dso_local global i64 0, align 8
@MAX_ISA_ADDR = common dso_local global i64 0, align 8
@isa_probe = common dso_local global i32 0, align 4
@MIN_EISA_ADDR = common dso_local global i64 0, align 8
@MAX_EISA_ADDR = common dso_local global i64 0, align 8
@eisa_probe = common dso_local global i32 0, align 4
@pci_probe = common dso_local global i64 0, align 8
@setup_done = common dso_local global i32 0, align 4
@MAX_BOARDS = common dso_local global i32 0, align 4
@num_boards = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_host_template*)* @eata2x_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata2x_detect(%struct.scsi_host_template* %0) #0 {
  %2 = alloca %struct.scsi_host_template*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.scsi_host_template*, %struct.scsi_host_template** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @boot_options, align 4
  %8 = call i64 @strlen(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @boot_options, align 4
  %12 = call i32 @option_setup(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i64, i64* @MAX_INT_PARAM, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %79, %13
  %17 = load i64*, i64** @io_port, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %16
  %24 = load i64*, i64** @io_port, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SKIP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %79

32:                                               ; preds = %23
  %33 = load i64*, i64** @io_port, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAX_ISA_ADDR, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i32, i32* @isa_probe, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @SKIP, align 8
  %45 = load i64*, i64** @io_port, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  br label %77

50:                                               ; preds = %32
  %51 = load i64*, i64** @io_port, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MIN_EISA_ADDR, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load i64*, i64** @io_port, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAX_EISA_ADDR, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i32, i32* @eisa_probe, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @SKIP, align 8
  %71 = load i64*, i64** @io_port, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75, %58, %50
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %16

82:                                               ; preds = %16
  %83 = load i64, i64* @pci_probe, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* @setup_done, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (...) @add_pci_ports()
  br label %92

90:                                               ; preds = %85
  %91 = call i32 (...) @enable_pci_ports()
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %82
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %128, %93
  %95 = load i64*, i64** @io_port, align 8
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %94
  %102 = load i64*, i64** @io_port, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SKIP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %128

110:                                              ; preds = %101
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @MAX_BOARDS, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i64*, i64** @io_port, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.scsi_host_template*, %struct.scsi_host_template** %2, align 8
  %122 = call i64 @port_detect(i64 %119, i32 %120, %struct.scsi_host_template* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32, i32* %3, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %114, %110
  br label %128

128:                                              ; preds = %127, %109
  %129 = load i32, i32* %4, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %94

131:                                              ; preds = %94
  %132 = load i32, i32* %3, align 4
  store i32 %132, i32* @num_boards, align 4
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @option_setup(i32) #1

declare dso_local i32 @add_pci_ports(...) #1

declare dso_local i32 @enable_pci_ports(...) #1

declare dso_local i64 @port_detect(i64, i32, %struct.scsi_host_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
