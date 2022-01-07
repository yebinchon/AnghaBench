; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_check_channel_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_check_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"adv_pci1710 EDBG:  check_channel_list(...,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"range/channel list is empty!\00", align 1
@AREF_DIFF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Odd channel can't be differential input!\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"channel list must be continous! chanlist[%i]=%d but must be %d or %d!\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"bad channel, reference or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32)* @check_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_channel_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = call i32 @comedi_error(%struct.comedi_device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %199

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %196

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %127, %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %132

45:                                               ; preds = %34
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @CR_CHAN(i32 %50)
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @CR_AREF(i32 %59)
  %61 = load i64, i64* @AREF_DIFF, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = call i32 @comedi_error(%struct.comedi_device* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %199

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CR_CHAN(i32 %72)
  %74 = add i32 %73, 1
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = urem i32 %74, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @CR_AREF(i32 %83)
  %85 = load i64, i64* @AREF_DIFF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %67
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = urem i32 %89, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %87, %67
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CR_CHAN(i32 %100)
  %102 = icmp ne i32 %95, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %94
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CR_CHAN(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @CR_CHAN(i32 %114)
  %116 = zext i32 %115 to i64
  %117 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %110, i32 %111, i64 %116)
  store i32 0, i32* %5, align 4
  br label %199

118:                                              ; preds = %94
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %30

132:                                              ; preds = %44, %30
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %192, %132
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %195

137:                                              ; preds = %133
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %13, align 4
  %145 = urem i32 %143, %144
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %142, %148
  br i1 %149, label %150, label %191

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @CR_CHAN(i32 %155)
  %157 = load i32, i32* %11, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @CR_RANGE(i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @CR_AREF(i32 %165)
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %13, align 4
  %170 = urem i32 %168, %169
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @CR_CHAN(i32 %173)
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %13, align 4
  %178 = urem i32 %176, %177
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @CR_RANGE(i32 %181)
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %13, align 4
  %185 = urem i32 %183, %184
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @CR_AREF(i32 %188)
  %190 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32 %156, i32 %161, i64 %166, i32 %174, i32 %182, i64 %189)
  store i32 0, i32* %5, align 4
  br label %199

191:                                              ; preds = %137
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %11, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %133

195:                                              ; preds = %133
  br label %197

196:                                              ; preds = %22
  store i32 1, i32* %13, align 4
  br label %197

197:                                              ; preds = %196, %195
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %150, %103, %63, %19
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
