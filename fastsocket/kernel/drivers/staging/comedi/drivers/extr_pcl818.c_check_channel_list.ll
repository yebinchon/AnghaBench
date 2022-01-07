; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_check_channel_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl818.c_check_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"range/channel list is empty!\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"comedi%d: pcl818: channel list must be continous! chanlist[%i]=%d but must be %d or %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"comedi%d: pcl818: bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"check_channel_list: seglen %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32)* @check_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_channel_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = call i32 @comedi_error(%struct.comedi_device* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %161

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %28

28:                                               ; preds = %89, %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %94

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %94

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = sub i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CR_CHAN(i32 %48)
  %50 = add i32 %49, 1
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = urem i32 %50, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CR_CHAN(i32 %60)
  %62 = icmp ne i32 %55, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %43
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CR_CHAN(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CR_CHAN(i32 %77)
  %79 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %73, i32 %74, i32 %78)
  store i32 0, i32* %5, align 4
  br label %166

80:                                               ; preds = %43
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %28

94:                                               ; preds = %42, %28
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %157, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %160

99:                                               ; preds = %95
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = urem i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %104, %110
  br i1 %111, label %112, label %156

112:                                              ; preds = %99
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @CR_CHAN(i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @CR_RANGE(i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CR_AREF(i32 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = urem i32 %133, %134
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @CR_CHAN(i32 %138)
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %13, align 4
  %143 = urem i32 %141, %142
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @CR_RANGE(i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %13, align 4
  %150 = urem i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @CR_AREF(i32 %153)
  %155 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116, i32 %121, i32 %126, i32 %131, i32 %139, i32 %147, i32 %154)
  store i32 0, i32* %5, align 4
  br label %166

156:                                              ; preds = %99
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %95

160:                                              ; preds = %95
  br label %162

161:                                              ; preds = %20
  store i32 1, i32* %13, align 4
  br label %162

162:                                              ; preds = %161, %160
  %163 = load i32, i32* %13, align 4
  %164 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %112, %63, %17
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
