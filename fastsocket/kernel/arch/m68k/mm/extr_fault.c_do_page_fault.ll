; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_fault.c_do_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mm/extr_fault.c_do_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32, %struct.mm_struct* }
%struct.TYPE_4__ = type { i64, i32, i8* }
%struct.mm_struct = type { i32, i32 }
%struct.pt_regs = type { i32, i32 }
%struct.vm_area_struct = type { i32, i64 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@VM_IO = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VM: killing process %s\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i8* null, align 8
@BUS_ADRERR = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i8* null, align 8
@SEGV_MAPERR = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_page_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %8, align 8
  %15 = call i64 (...) @in_atomic()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %19 = icmp ne %struct.mm_struct* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  br label %177

21:                                               ; preds = %17
  %22 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  %24 = call i32 @down_read(i32* %23)
  %25 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %25, i64 %26)
  store %struct.vm_area_struct* %27, %struct.vm_area_struct** %9, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %29 = icmp ne %struct.vm_area_struct* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %201

31:                                               ; preds = %21
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VM_IO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %214

39:                                               ; preds = %31
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %72

46:                                               ; preds = %39
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VM_GROWSDOWN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %201

54:                                               ; preds = %46
  %55 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %56 = call i64 @user_mode(%struct.pt_regs* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 256
  %61 = call i64 (...) @rdusp()
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %201

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %54
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @expand_stack(%struct.vm_area_struct* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %201

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %45
  store i32 0, i32* %10, align 4
  %73 = load i64, i64* %7, align 8
  %74 = and i64 %73, 3
  switch i64 %74, label %75 [
    i64 2, label %76
    i64 1, label %87
    i64 0, label %88
  ]

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %72, %75
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VM_WRITE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %214

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %101

87:                                               ; preds = %72
  br label %214

88:                                               ; preds = %72
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VM_READ, align 4
  %93 = load i32, i32* @VM_EXEC, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @VM_WRITE, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %91, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %88
  br label %214

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %160, %101
  %103 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %111

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = call i32 @handle_mm_fault(%struct.mm_struct* %103, %struct.vm_area_struct* %104, i64 %105, i32 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @VM_FAULT_ERROR, align 4
  %116 = and i32 %114, %115
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @VM_FAULT_OOM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %153

125:                                              ; preds = %119
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %188

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  %133 = call i32 (...) @BUG()
  br label %134

134:                                              ; preds = %132, %111
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %149

144:                                              ; preds = %134
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %151 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %150, i32 0, i32 0
  %152 = call i32 @up_read(i32* %151)
  store i32 0, i32* %4, align 4
  br label %233

153:                                              ; preds = %124
  %154 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %155 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %154, i32 0, i32 0
  %156 = call i32 @up_read(i32* %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %158 = call i64 @is_global_init(%struct.TYPE_5__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = call i32 (...) @yield()
  %162 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %163 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %162, i32 0, i32 0
  %164 = call i32 @down_read(i32* %163)
  br label %102

165:                                              ; preds = %153
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %171 = call i64 @user_mode(%struct.pt_regs* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i32, i32* @SIGKILL, align 4
  %175 = call i32 @do_group_exit(i32 %174)
  br label %176

176:                                              ; preds = %173, %165
  br label %177

177:                                              ; preds = %176, %20
  %178 = load i8*, i8** @SIGBUS, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i64 %182, i64* %185, align 8
  %186 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %187 = call i32 @send_fault_sig(%struct.pt_regs* %186)
  store i32 %187, i32* %4, align 4
  br label %233

188:                                              ; preds = %130
  %189 = load i8*, i8** @SIGBUS, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i8* %189, i8** %192, align 8
  %193 = load i32, i32* @BUS_ADRERR, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 8
  %197 = load i64, i64* %6, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  br label %227

201:                                              ; preds = %70, %63, %53, %30
  %202 = load i8*, i8** @SIGSEGV, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  store i8* %202, i8** %205, align 8
  %206 = load i32, i32* @SEGV_MAPERR, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 8
  %210 = load i64, i64* %6, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i64 %210, i64* %213, align 8
  br label %227

214:                                              ; preds = %99, %87, %83, %38
  %215 = load i8*, i8** @SIGSEGV, align 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  store i8* %215, i8** %218, align 8
  %219 = load i32, i32* @SEGV_ACCERR, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  store i32 %219, i32* %222, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store i64 %223, i64* %226, align 8
  br label %227

227:                                              ; preds = %214, %201, %188
  %228 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %229 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %228, i32 0, i32 0
  %230 = call i32 @up_read(i32* %229)
  %231 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %232 = call i32 @send_fault_sig(%struct.pt_regs* %231)
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %227, %177, %149
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i64 @in_atomic(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @rdusp(...) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @handle_mm_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @is_global_init(%struct.TYPE_5__*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @do_group_exit(i32) #1

declare dso_local i32 @send_fault_sig(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
