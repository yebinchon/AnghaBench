; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_print_serial_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_print_serial_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"UNICODE Format.  Can't Display\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"LAN-48 MAC address @ %02X:%02X:%02X:%02X:%02X:%02X\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"WAN Access Address\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"LAN-64 MAC address @ [?:%02X:%02X:?] %02X:%02X:%02X:%02X:%02X:%02X\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"DDM: Tid=%03Xh, Rsvd=%04Xh, OrgId=%04Xh\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"IEEE NodeName(hi,lo)=(%08Xh:%08Xh), PortName(hi,lo)=(%08Xh:%08Xh)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Unknown data format (0x%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i32*, i32)* @print_serial_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_serial_number(%struct.seq_file* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %164 [
    i32 137, label %11
    i32 138, label %33
    i32 131, label %82
    i32 133, label %85
    i32 128, label %106
    i32 132, label %109
    i32 136, label %136
    i32 134, label %148
    i32 135, label %148
    i32 130, label %163
    i32 129, label %163
  ]

11:                                               ; preds = %3
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %29, %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %14

32:                                               ; preds = %14
  br label %170

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %45, %44 ], [ %49, %46 ]
  store i32 %51, i32* %6, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %59)
  br label %81

61:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %62

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %50
  br label %170

82:                                               ; preds = %3
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %170

85:                                               ; preds = %3
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %104)
  br label %170

106:                                              ; preds = %3
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %170

109:                                              ; preds = %3
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 6
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 7
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %116, i32 %119, i32 %122, i32 %125, i32 %128, i32 %131, i32 %134)
  br label %170

136:                                              ; preds = %3
  %137 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %140, i32 %143, i32 %146)
  br label %170

148:                                              ; preds = %3, %3
  %149 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 10
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 14
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %152, i32 %155, i32 %158, i32 %161)
  br label %170

163:                                              ; preds = %3, %3
  br label %164

164:                                              ; preds = %3, %163
  %165 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %164, %148, %136, %109, %106, %85, %82, %81, %32
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
