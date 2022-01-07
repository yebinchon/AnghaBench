; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_erase_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_erase_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"ips_erase_bios\00", align 1
@IPS_REG_FLAP = common dso_local global i64 0, align 8
@IPS_REVID_TROMBONE64 = common dso_local global i64 0, align 8
@IPS_REG_FLDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ips_erase_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_erase_bios(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IPS_REG_FLAP, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outl(i32 0, i64 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @udelay(i32 25)
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPS_REG_FLDP, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 80, i64 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = call i32 @udelay(i32 25)
  br label %38

38:                                               ; preds = %36, %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPS_REG_FLDP, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 32, i64 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @udelay(i32 25)
  br label %54

54:                                               ; preds = %52, %38
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IPS_REG_FLDP, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 208, i64 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = call i32 @udelay(i32 25)
  br label %70

70:                                               ; preds = %68, %54
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IPS_REG_FLDP, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 112, i64 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = call i32 @udelay(i32 25)
  br label %86

86:                                               ; preds = %84, %70
  store i32 80000, i32* %4, align 4
  br label %87

87:                                               ; preds = %117, %86
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %87
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IPS_REG_FLAP, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outl(i32 0, i64 %103)
  %105 = call i32 @udelay(i32 25)
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IPS_REG_FLDP, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @inb(i64 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 128
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %121

117:                                              ; preds = %106
  %118 = call i32 @MDELAY(i32 1)
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %4, align 4
  br label %87

121:                                              ; preds = %116, %87
  %122 = load i32, i32* %4, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %176

124:                                              ; preds = %121
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IPS_REG_FLDP, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outb(i32 176, i64 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %124
  %139 = call i32 @udelay(i32 25)
  br label %140

140:                                              ; preds = %138, %124
  store i32 10000, i32* %4, align 4
  br label %141

141:                                              ; preds = %171, %140
  %142 = load i32, i32* %4, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %175

144:                                              ; preds = %141
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IPS_REG_FLAP, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @outl(i32 0, i64 %157)
  %159 = call i32 @udelay(i32 25)
  br label %160

160:                                              ; preds = %152, %144
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IPS_REG_FLDP, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @inb(i64 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, 192
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %175

171:                                              ; preds = %160
  %172 = call i32 @MDELAY(i32 1)
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %4, align 4
  br label %141

175:                                              ; preds = %170, %141
  store i32 1, i32* %2, align 4
  br label %219

176:                                              ; preds = %121
  %177 = load i32, i32* %5, align 4
  %178 = and i32 %177, 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 1, i32* %2, align 4
  br label %219

181:                                              ; preds = %176
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, 48
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 1, i32* %2, align 4
  br label %219

186:                                              ; preds = %181
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @IPS_REG_FLDP, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @outb(i32 80, i64 %191)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %186
  %201 = call i32 @udelay(i32 25)
  br label %202

202:                                              ; preds = %200, %186
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IPS_REG_FLDP, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @outb(i32 255, i64 %207)
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @IPS_REVID_TROMBONE64, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %202
  %217 = call i32 @udelay(i32 25)
  br label %218

218:                                              ; preds = %216, %202
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %185, %180, %175
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @MDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
